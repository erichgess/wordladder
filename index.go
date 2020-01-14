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

/*
performance notes
  - The biggest performance killer is `count += l`, when it's moving a register to the stack.
  - Is there someway to change this function such that everything can be done exclusively within registers?

  - Ideas:
  - compute the hashes first into their own slice (all calls the mmr3 hasher are done in one stage of the code, accesses to `idx.index` are in a
	 second block of code)
  - have a common buffer for storing the slice of hashes, so we don't have to run make slice with every call
  - have slice with the length of every bucket, so we don't have to call len(`idx.index[...]`), will reduce layers of indirection and function calls
	(also duplicate work, the same buckets will be recomputed many many times)
  - Think about how this is pulling in cache lines and moving data around registers and the stack
*/
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
