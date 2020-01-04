package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
)

var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to this file")
var dict = flag.String("dict", "./big.dict", "the file containing the set of words to use")
var src = flag.String("src", "cat", "the starting word")
var dest = flag.String("dest", "dogs", "the word you are trying to reach")

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
	g := LoadDictionary(*dict)
	fmt.Printf("Words: %d\tEdges: %d\n", g.WordCount(), g.EdgeCount())

	fmt.Printf("Finding Path from %s to %s\n", *src, *dest)
	v1 := g.Find(*src)
	v2 := g.Find(*dest)
	var p []int

	if v1 < 0 || v2 < 0 {
		fmt.Println("Word not in dictionary")
		return
	}

	for i := 0; i < 1; i++ {
		p = g.Path(v1, v2)
	}

	if len(p) == 0 {
		fmt.Println("No Path Found")
	}

	for _, v := range p {
		fmt.Println(g.vertices[v].word)
	}

	fmt.Println("Using Paths")
	paths := g.AllPaths(v1)
	longest := paths.To(*dest)
	for _, v := range longest {
		fmt.Println(g.vertices[v].word)
	}
}
