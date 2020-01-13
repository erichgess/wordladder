package main

import (
	"hash"

	"github.com/spaolacci/murmur3"
)

type index struct {
	hasher hash.Hash64
	index  map[uint64]([]int)
	buf    []byte // a shared buffer used for copying intermediate words
}

func newIndex(bufSize int) *index {
	return &index{
		hasher: murmur3.New64(),
		index:  make(map[uint64]([]int)),
		buf:    make([]byte, 0, bufSize),
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
		hash := idx.hasher.Sum64()
		idx.index[hash] = append(idx.index[hash], id)
	}
}

func (idx *index) near(word []byte) []int {
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hash := idx.hasher.Sum64()

	l := len(idx.index[hash])
	adjList := make([]int, l)
	copy(adjList, idx.index[hash])

	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hash := idx.hasher.Sum64()
		if v, ok := idx.index[hash]; ok {
			for _, id := range v {
				adjList = append(adjList, id)
			}
		}
	}

	return adjList
}

// skipOneCopy copies the src slice to the dst slice while skipping
// the byte at index `skip`.  `dst` should have a length >= `len(src)-1`.
func skipOneCopy(dst []byte, src []byte, skip int) {
	tmpA := dst[:skip]
	tmpB := dst[skip:]
	copy(tmpA, src[:skip])
	copy(tmpB, src[skip+1:])
}
