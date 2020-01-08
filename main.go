package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
)

var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to this file")
var dict = flag.String("dict", "./dicts/big.dict", "the file containing the set of words to use")
var src = flag.String("src", "cat", "the starting word")
var dest = flag.String("dest", "dogs", "the word you are trying to reach")
var perfStats = flag.Bool("stats", false, "print out stats about the construction of the word graph")
var printGraph = flag.Bool("print", false, "prints the graph to STDIO, overrides path finding")

func main() {
	flag.Parse()

	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)
		if err != nil {
			log.Fatal(err)
		}
		pprof.StartCPUProfile(f)
		defer pprof.StopCPUProfile()
	}

	fmt.Println("Loading Dictionary")
	g := LoadDictionary(*dict, *perfStats)
	fmt.Printf("Words: %d\tEdges: %d\n", g.WordCount(), g.EdgeCount())

	if !*printGraph {
		fmt.Printf("Finding Path from %s to %s\n", *src, *dest)
		v1 := g.Find(*src)
		v2 := g.Find(*dest)

		if v1 < 0 || v2 < 0 {
			fmt.Println("Word not in dictionary")
			return
		}

		fmt.Println("Using Paths")
		paths := g.AllPaths(v1)
		longest := paths.To(*dest)
		for _, v := range longest {
			fmt.Println(g.vertices[v].word)
		}
	} else {
		g.PrintAdjList()
	}
}
