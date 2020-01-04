package main

type index struct {
	index map[string]([]int)
}

func newIndex() *index {
	return &index{
		index: make(map[string]([]int)),
	}
}

func (idx *index) add(id int, word string) {
	// for each permutation of `word` created by deleting a single letter
	// add `id` to the index associated with that permutation
	for i := 0; i < len(word); i++ {
		tmp := word[:i] + word[i+1:]
		if idx.index[tmp] == nil {
			idx.index[tmp] = make([]int, 0)
		}
		idx.index[tmp] = append(idx.index[tmp], id)
	}
}

func (idx *index) adj(word string) []int {
	var adjList []int
	if adjList = idx.index[word]; adjList == nil {
		adjList = make([]int, 0)
	}

	for i := 0; i < len(word); i++ {
		tmp := word[:i] + word[i+1:]
		if v, ok := idx.index[tmp]; ok {
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
