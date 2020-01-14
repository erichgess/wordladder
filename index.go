package main

import (
	"hash"

	"github.com/spaolacci/murmur3"
)

type index struct {
	hasher hash.Hash64
	index  [][]int
	buf    []byte // a shared buffer used for copying intermediate words
	size   uint64
}

func newIndex(size int, bufSize int) *index {
	idx := make([][]int, size)
	for i := range idx {
		idx[i] = make([]int, 0)
	}
	return &index{
		hasher: murmur3.New64(),
		buf:    make([]byte, 0, bufSize),
		index:  idx,
		size:   uint64(size),
	}
}

func (idx *index) add(id int, word []byte) {
	// for each permutation of `word` created by deleting a single letter
	// add `id` to the index associated with that permutation
	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hash := idx.hasher.Sum64() % idx.size
		idx.index[hash] = append(idx.index[hash], id)
	}
}

func (idx *index) nearCount(word []byte) int {
	count := 0
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hash := idx.hasher.Sum64() % idx.size
	count += len(idx.index[hash])

	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hash := idx.hasher.Sum64() % idx.size
		l := len(idx.index[hash])
		count += l
	}

	return count
}

func (idx *index) near(word []byte, result []int) {
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hash := idx.hasher.Sum64() % idx.size
	pos := copy(result, idx.index[hash])

	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hash := idx.hasher.Sum64() % idx.size
		v := idx.index[hash]
		pos = copy(result[pos:], v)
	}

}

// skipOneCopy copies the src slice to the dst slice while skipping
// the byte at index `skip`.  `dst` should have a length >= `len(src)-1`.
func skipOneCopy(dst []byte, src []byte, skip int) {
	tmpA := dst[:skip]
	tmpB := dst[skip:]
	copy(tmpA, src[:skip])
	copy(tmpB, src[skip+1:])
}
