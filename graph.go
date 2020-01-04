package main

import (
	"bufio"
	"container/heap"
	"log"
	"math"
	"os"
	"strings"
)

// Edge connects two words
type Edge struct {
	a, b int
}

// Vertex represents a single word
type Vertex struct {
	word string
}

// Graph is a dictionary of words and a set of edges connecting each word
// to the words which are a single letter away
type Graph struct {
	vertices []Vertex
	adjList  [][]int
}

// LoadDictionary loads a dictionary file and constructs a graph connecting
// each word in the dictionary to all the other words which are only one letter
// away.  All words have the same number of letters and will be converted to lower
// case.
//
// The file format is:
// <New line separated list of words>
func LoadDictionary(path string) *Graph {
	file, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)

	g := Graph{
		vertices: make([]Vertex, 0),
	}

	// read the dictionary and for each word at it as a vertex in the graph.
	for scanner.Scan() {
		word := scanner.Text()
		g.vertices = append(g.vertices, Vertex{strings.ToLower(word)})
	}
	g.adjList = make([][]int, len(g.vertices))
	for i := range g.adjList {
		g.adjList[i] = make([]int, 0)
	}

	index := newIndex()
	for i, w := range g.vertices {
		index.add(i, w.word)
	}

	// for each word, find words which are only one letter different
	// and create edges connecting them.
	for i := 0; i < len(g.vertices); i++ {
		cWord := g.vertices[i].word
		adj := index.adj(cWord)
		for _, j := range adj {
			if distance(cWord, g.vertices[j].word) == 1 {
				g.adjList[i] = append(g.adjList[i], j)
				g.adjList[j] = append(g.adjList[j], i)
			}
		}
	}

	return &g
}

// Find returns the id of the vertex with the given word, if it is in the graph.
// If the word is not in the graph then it returns -1
func (g *Graph) Find(word string) int {
	for i, v := range g.vertices {
		if v.word == word {
			return i
		}
	}

	return -1
}

// Path will return, if it exists, a path going from vertex `v1` to vertex `v2`.  If
// no path exists, then it will return nil
//
// Details: this uses Dijkstra's algorithm: https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
func (g *Graph) Path(v1, v2 int) []int {
	dist := make([]int, len(g.vertices))
	prev := make([]int, len(g.vertices))
	pq := make(PriorityQueue, len(g.vertices))
	items := make(map[int]*Item)

	for i := range g.vertices {
		dist[i] = math.MaxInt64
		prev[i] = math.MaxInt64
		pq[i] = &Item{
			value:    i,
			priority: math.MaxInt64,
			index:    i,
		}
		items[i] = pq[i]
	}

	dist[v1] = 0
	pq[v1].priority = 0
	heap.Init(&pq)

	for pq.Len() > 0 {
		// find vertex, `u`, in vSet with the smallest distance
		u := (heap.Pop(&pq).(*Item))

		// then no path has been found
		if u.priority == math.MaxInt64 {
			return nil
		}

		// if `u` matches `v2` then exit the loop early
		if u.value == v2 {
			break
		}

		// for each vertex adjacent to `u`
		adjList := g.getAdjacent(u.value)
		for _, v := range adjList {
			// compute the distance from the source to `v`
			alt := dist[u.value] + 1

			// if the new distance is shorter than the existing distance for `v`
			if alt < dist[v] {
				// update dist and prev
				dist[v] = alt
				prev[v] = u.value
				//pq.DecreasePriority(v, alt)
				pq.update(items[v], v, alt)
			}
		}
	}

	path := make([]int, 0)
	u := v2

	if prev[u] < math.MaxInt64 || u == v1 {
		for prev[u] < math.MaxInt64 {
			path = append(path, u)
			u = prev[u]
		}
		path = append(path, v1)

		// reverse order
		for i := 0; i < len(path)/2; i++ {
			tmp := path[i]
			path[i] = path[len(path)-1-i]
			path[len(path)-1-i] = tmp
		}
	}

	return path
}

func smallestDistance(vSet []bool, dist []int) int {
	minDist := math.MaxInt64
	minV := -1
	for v, t := range vSet {
		if t && dist[v] < minDist {
			minV = v
			minDist = dist[v]
		}
	}

	return minV
}

func (g *Graph) getAdjacent(v int) []int {
	return g.adjList[v]
}

func distance(w1, w2 string) int {
	dist := len(w1) - len(w2)
	if dist < 0 {
		dist = -dist
	}
	l := len(w1)
	if l > len(w2) {
		l = len(w2)
	}
	for i := 0; i < l; i++ {
		if w1[i] != w2[i] {
			dist++
		}
	}

	return dist
}

// WordCount returns hte number of words in the graph
func (g *Graph) WordCount() int {
	return len(g.vertices)
}

// EdgeCount returns the number of connections between words in the graph
func (g *Graph) EdgeCount() int {
	e := 0
	for i := range g.adjList {
		e += len(g.adjList[i])
	}

	return e / 2
}
