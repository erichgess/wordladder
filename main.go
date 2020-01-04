package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime/pprof"
)

var cpuprofile = flag.String("cpuprofile", "", "write cpu profile to this file")

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
	g := LoadDictionary("./big.dict")

	index := newIndex()
	for i, w := range g.vertices {
		index.add(i, w.word)
	}
	adj := index.adj("cat")
	fmt.Println(adj)
	for _, id := range adj {
		fmt.Println(g.vertices[id].word)
	}

	fmt.Println("Finding Path from dog to cat")
	v1 := g.Find("aeon")
	v2 := g.Find("adoze")
	var p []int

	if v1 < 0 || v2 < 0 {
		return
	}

	for i := 0; i < 1; i++ {
		p = g.Path(v1, v2)
	}

	for _, v := range p {
		fmt.Println(g.vertices[v].word)
	}
}
