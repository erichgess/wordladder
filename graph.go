package main

import (
	"bufio"
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
	edges    []Edge
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
		edges:    make([]Edge, 0),
	}

	// read the dictionary and for each word at it as a vertex in the graph.
	for scanner.Scan() {
		word := scanner.Text()
		g.vertices = append(g.vertices, Vertex{strings.ToLower(word)})
	}

	// for each word, find words which are only one letter different
	// and create edges connecting them.
	for i := 0; i < len(g.vertices); i++ {
		cWord := g.vertices[i].word
		for j := i + 1; j < len(g.vertices); j++ {
			if distance(cWord, g.vertices[j].word) == 1 {
				g.edges = append(g.edges, Edge{i, j})
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
	vSet := make(map[int]struct{})

	for i := range g.vertices {
		dist[i] = math.MaxInt64
		prev[i] = math.MaxInt64
		vSet[i] = struct{}{}
	}

	dist[v1] = 0

	for len(vSet) > 0 {
		// find vertex, `u`, in vSet with the smallest distance
		u := smallestDistance(vSet, dist)

		// then no path has been found
		if u == -1 {
			return nil
		}

		// remove `u` from vSet
		delete(vSet, u)

		// if `u` matches `v2` then exit the loop early
		if u == v2 {
			break
		}

		// for each vertex adjacent to `u`
		adjList := g.getAdjacent(u)
		for _, v := range adjList {
			// compute the distance from the source to `v`
			alt := dist[u] + 1

			// if the new distance is shorter than the existing distance for `v`
			if alt < dist[v] {
				// update dist and prev
				dist[v] = alt
				prev[v] = u
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

func smallestDistance(vSet map[int]struct{}, dist []int) int {
	minDist := math.MaxInt64
	minV := -1
	for k := range vSet {
		if dist[k] < minDist {
			minV = k
			minDist = dist[k]
		}
	}

	return minV
}

func (g *Graph) getAdjacent(v int) []int {
	adj := make(map[int]struct{})
	for _, e := range g.edges {
		if e.a == v {
			adj[e.b] = struct{}{}
		} else if e.b == v {
			adj[e.a] = struct{}{}
		}
	}

	adjList := make([]int, len(adj))

	i := 0
	for k := range adj {
		adjList[i] = k
		i++
	}

	return adjList
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
