package main

import (
	"hash"

	"github.com/spaolacci/murmur3"
)

type index struct {
	hasher hash.Hash32
	index  map[uint32]([]int)
}

func newIndex() *index {
	return &index{
		hasher: murmur3.New32(),
		index:  make(map[uint32]([]int)),
	}
}

func (idx *index) add(id int, word []byte) {
	// for each permutation of `word` created by deleting a single letter
	// add `id` to the index associated with that permutation
	tmp := make([]byte, 0, len(word))
	for i := 0; i < len(word); i++ {
		copy(tmp, word[:i])
		tmp = append(tmp, word[i+1:]...)
		//tmp := word[:i] + word[i+1:]
		idx.hasher.Reset()
		idx.hasher.Write([]byte(tmp))
		hash := idx.hasher.Sum32()
		if idx.index[hash] == nil {
			idx.index[hash] = make([]int, 0)
		}
		idx.index[hash] = append(idx.index[hash], id)
	}
}

func (idx *index) near(word []byte) []int {
	var adjList []int
	idx.hasher.Reset()
	idx.hasher.Write(word)
	hash := idx.hasher.Sum32()
	if adjList = idx.index[hash]; adjList == nil {
		adjList = make([]int, 0)
	}

	tmp := make([]byte, 0, len(word))
	for i := 0; i < len(word); i++ {
		copy(tmp, word[:i])
		tmp = append(tmp, word[i+1:]...)
		//tmp := word[:i] + word[i+1:]
		idx.hasher.Reset()
		idx.hasher.Write(tmp)
		hash := idx.hasher.Sum32()
		if v, ok := idx.index[hash]; ok {
			for _, id := range v {
				exists := false
				for j := range adjList {
					if id == adjList[j] {
						exists = true
						break
					}
				}
				if !exists {
					adjList = append(adjList, id)
				}
			}
		}
	}

	return adjList
}
