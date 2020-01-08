package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
)

var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to this file")
var dict = flag.String("dict", "./dicts/words", "the file containing the set of words to use")
var src = flag.String("src", "cat", "the starting word")
var dest = flag.String("dest", "dogs", "the word you are trying to reach")
var perfStats = flag.Bool("stats", false, "print out stats about the construction of the word graph")
var printGraph = flag.Bool("print", false, "prints the graph to STDIO, overrides path finding")
var dump = flag.String("dump", "", "when set, intermediate data will be dumped to the given path")

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

	if *dump != "" {
		createPathIfNotExists(*dump)
	}

	fmt.Println("Loading Dictionary")
	g := LoadDictionary(*dict, *perfStats, *dump)
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

func createPathIfNotExists(path string) {
	if _, err := os.Stat(path); os.IsNotExist(err) {
		fmt.Printf("%s does not exist, creating\n", path)
		if err := os.MkdirAll(path, os.ModePerm); err != nil {
			fmt.Printf("Creation failed: %s", err)
		}
	}
}
