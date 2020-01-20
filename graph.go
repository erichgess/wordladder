package main

import (
	"bufio"
	"bytes"
	"container/heap"
	"fmt"
	"log"
	"math"
	"os"
	"sort"
	"strings"
)

// Edge connects two words
type Edge struct {
	a, b int
}

// Vertex represents a single word
type Vertex struct {
	word []byte
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
func LoadDictionary(path string, stats bool, dump string) *Graph {
	defer newTimer("LoadDictionary")()
	file, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	g := Graph{
		vertices: make([]Vertex, 0),
	}

	// read the dictionary and for each word at it as a vertex in the graph.
	longestWord := 0
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		by := scanner.Bytes()
		word := make([]byte, len(by))
		copy(word, by)
		g.vertices = append(g.vertices, Vertex{word})
		if len(word) > longestWord {
			longestWord = len(word)
		}
	}

	if dump != "" {
		g.dumpVertices(dump + "/vertices.txt")
	}

	g.adjList = make([][]int, len(g.vertices))
	for i := range g.adjList {
		g.adjList[i] = make([]int, 0)
	}

	stopBldIdxTmr := newTimer("buildIndex")
	index := newIndex(8*1024*1024, longestWord)
	for i, w := range g.vertices {
		index.add(i, w.word)
	}
	stopBldIdxTmr()

	if stats {
		index.printStats()
		indexDuplicates(index)
	}

	// for each word, find words which are only one letter different
	// and create edges connecting them.
	stopBldAdjTmr := newTimer("buildAdjList")
	g.buildAdjList(index)
	stopBldAdjTmr()

	if dump != "" {
		g.dumpAdjList(dump + "/adj.txt")
	}

	if stats {
		adjListStats(&g)
	}

	return &g
}

func (g *Graph) buildAdjList(index *index) {
	totalSz := 0
	for i := 0; i < len(g.vertices); i++ {
		cWord := g.vertices[i].word
		sz := index.nearCount(cWord)
		totalSz += sz
		adj := make([]int, sz)
		index.near(cWord, adj)
		for _, j := range adj {
			if distance(cWord, g.vertices[j].word) == 1 {
				g.adjList[i] = append(g.adjList[i], j)
				g.adjList[j] = append(g.adjList[j], i)
			}
		}
	}
	fmt.Printf("Avg sz:%f\n", float64(totalSz)/float64(len(g.vertices)))
}

// Find returns the id of the vertex with the given word, if it is in the graph.
// If the word is not in the graph then it returns -1
func (g *Graph) Find(word string) int {
	byWord := []byte(word)
	for i, v := range g.vertices {
		if bytes.Compare(v.word, byWord) == 0 {
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

// AllPaths finds all the paths from the given word to other words in the dictionary
//
// Details: this uses Dijkstra's algorithm: https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm
func (g *Graph) AllPaths(v1 int) *Paths {
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

		// there are no more nodes which are reachable from `v1`
		if dist[u.value] == math.MaxInt64 {
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
				pq.update(items[v], v, alt)
			}
		}
	}

	return &Paths{
		g:    g,
		prev: prev,
		dist: dist,
		src:  v1,
	}
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

func distance(w1, w2 []byte) int {
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

// Paths is the set of all paths from a source word to all other words (if reachable)
// in the dictionary
type Paths struct {
	g    *Graph
	prev []int
	dist []int
	src  int
}

// Longest returns the longest path in this set of paths.
func (p *Paths) Longest() []int {
	v := p.src
	max := p.dist[v]
	for i, d := range p.dist {
		if d != math.MaxInt64 && d > max {
			max = d
			v = i
		}
	}

	path := make([]int, 0, max+1)
	for p.prev[v] < math.MaxInt64 {
		path = append(path, v)
		v = p.prev[v]
	}
	path = append(path, p.src)

	// reverse order
	for i := 0; i < len(path)/2; i++ {
		tmp := path[i]
		path[i] = path[len(path)-1-i]
		path[len(path)-1-i] = tmp
	}

	return path
}

// To fines the path to `word` from the root word used to generate
// this set of paths.
func (p *Paths) To(word string) []int {
	u := p.g.Find(word)
	if u < 0 {
		return nil
	}

	if p.prev[u] < math.MaxInt64 || u == p.src {
		path := make([]int, 0, p.dist[u]+1)
		for p.prev[u] < math.MaxInt64 {
			path = append(path, u)
			u = p.prev[u]
		}
		path = append(path, p.src)

		// reverse order
		for i := 0; i < len(path)/2; i++ {
			tmp := path[i]
			path[i] = path[len(path)-1-i]
			path[len(path)-1-i] = tmp
		}

		return path
	}

	return nil
}

// PrintAdjList prints, to STDIO, a list of all the words in the graph and the words to which they are adjacent
func (g *Graph) PrintAdjList() {
	for i, v := range g.vertices {

		adjList := g.adjList[i]
		adjWords := make([]string, len(adjList))
		for j, adj := range adjList {
			adjWords[j] = string(g.vertices[adj].word)
		}
		sort.Strings(adjWords)
		fmt.Printf("%s: %s\n", string(v.word), strings.Join(adjWords, ", "))
	}
}

func (g *Graph) dumpAdjList(path string) {
	f, err := os.Create(path)
	if err != nil {
		log.Fatal(err)
	}
	for i, v := range g.vertices {
		adjList := g.adjList[i]
		adjWords := make([]string, len(adjList))
		for j, adj := range adjList {
			adjWords[j] = string(g.vertices[adj].word)
		}
		sort.Strings(adjWords)
		fmt.Fprintf(f, "%s: %s\n", string(v.word), strings.Join(adjWords, ", "))
	}
}

func (g *Graph) dumpVertices(path string) {
	f, err := os.Create(path)
	if err != nil {
		log.Fatal(err)
	}
	for _, v := range g.vertices {

		fmt.Fprintf(f, "%s\n", string(v.word))
	}
}
