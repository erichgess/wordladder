package main

import (
	"bufio"
	"log"
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

// Path will return, if it exists, a path going from vertex `v1` to vertex `v2`.  If
// no path exists, then it will return nil
func (g *Graph) Path(v1, v2 int) []int {
	// Do a breadth first search until you find `v2` or all vertices which are reachable
	// from `v1` have been visited.

	visted := make([]bool, len(g.vertices))

	q := make([]int, 0)

	visted[v1] = true
	q = append(q, v1)

	for len(q) > 0 {
		v := q[len(q)-1]
		q = q[:len(q)-1]

		adjList := g.getAdjacent(v)
		for _, cv := range adjList {
			if !visted[cv] {
				q = append(q, cv)
				visted[cv] = true
			}
		}
	}

	return nil
}

func (g *Graph) getAdjacent(v int) []int {
	adj := make(map[int]struct{})
	for _, e := range g.edges {
		if e.a == v {
			adj[e.a] = struct{}{}
		} else if e.b == v {
			adj[e.b] = struct{}{}
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
