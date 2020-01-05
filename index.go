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

func (idx *index) add(id int, word string) {
	// for each permutation of `word` created by deleting a single letter
	// add `id` to the index associated with that permutation
	for i := 0; i < len(word); i++ {
		tmp := word[:i] + word[i+1:]
		idx.hasher.Reset()
		idx.hasher.Write([]byte(tmp))
		hash := idx.hasher.Sum32()
		if idx.index[hash] == nil {
			idx.index[hash] = make([]int, 0)
		}
		idx.index[hash] = append(idx.index[hash], id)
	}
}

func (idx *index) adj(word string) []int {
	var adjList []int
	byWord := []byte(word)
	idx.hasher.Reset()
	idx.hasher.Write(byWord)
	hash := idx.hasher.Sum32()
	if adjList = idx.index[hash]; adjList == nil {
		adjList = make([]int, 0)
	}

	for i := 0; i < len(word); i++ {
		tmp := word[:i] + word[i+1:]
		idx.hasher.Reset()
		idx.hasher.Write([]byte(tmp))
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
