package main

/*
index enables quick look ups of words that are adjacent to a given word.  Where adjacent means that two words
diff by a single letter.

For examples:
1. "cat" and "bat" are adjacent
2. "cat" and "cats" are adjacent
3. "cat" and "bot" are not adjacent
4. "cat" and "cots" are not adjacent

*/

import (
	"hash"
	"sort"

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
	var hashBuffer [48]uint64
	hashes := hashBuffer[0:(len(word) + 1)]
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hashes[0] = idx.hasher.Sum64() % idx.size
	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hashes[i+1] = idx.hasher.Sum64() % idx.size
	}

	count := 0
	for i := 0; i < len(hashes); i++ {
		l := len(idx.index[hashes[i]])
		count += l
	}

	return count
}

/*
  Possible changes for performance:
  Observation: the slowest part of this function is now `pos = copy(...)`

  What if: this function just returned a slice with the bucket indices

  Another option: make this batchable.  Change the flow so that:
  1. get list of hashes of a word
  2. For each hash:
  3.  Call a function to get adjacent words passing the hash and a buffer
  4.  That function will return when the bucket is exhausted or teh buffer is full, it will return a means to know if the hash is complete
  5.  Copy buffer to adj list, if not complete recall with buffer:  this copy could be the slowest but if we preallocate the slice then it will be a lot less copying than the current code
  6.  If hash is complete, move to the next hash
*/
func (idx *index) near(word []byte, result []int) {
	var hashBuffer [48]uint64
	hashes := hashBuffer[0:(len(word) + 1)]
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hashes[0] = idx.hasher.Sum64() % idx.size
	tmp := idx.buf[:len(word)-1]
	for i := 0; i < len(word); i++ {
		skipOneCopy(tmp, word, i)

		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hashes[i+1] = idx.hasher.Sum64() % idx.size
	}

	pos := 0
	for i := 0; i < len(hashes); i++ {
		hash := hashes[i]
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

func (idx *index) printStats() {
	AddStatInt("Index Buffer", cap(idx.buf))
	AddStatInt("Index Buckets", len(idx.index))

	// find stats about buckets
	lengths := make([]int, len(idx.index))
	for i := range idx.index {
		lengths[i] = len(idx.index[i])
	}

	sort.Ints(lengths)
	min := lengths[0]
	l := len(lengths)
	max := lengths[l-1]
	median := lengths[l/2]
	p75 := lengths[(3*l)/4]
	p90 := lengths[(90*l)/100]
	p95 := lengths[(95*l)/100]
	p99 := lengths[(99*l)/100]

	AddStatInt("Index Min", min)
	AddStatInt("Index Max", max)
	AddStatInt("Index p50", median)
	AddStatInt("Index p75", p75)
	AddStatInt("Index p90", p90)
	AddStatInt("Index p95", p95)
	AddStatInt("Index p99", p99)

	sum := 0
	for i := range lengths {
		sum += lengths[i]
	}
	AddStatFloat("Index Mean", float64(sum)/float64(l))
}
