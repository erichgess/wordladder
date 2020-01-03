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

	fmt.Println("Finding Path from dog to cat")
	v1 := g.Find("aeon")
	v2 := g.Find("adoze")
	var p []int
	for i := 0; i < 1; i++ {
		p = g.Path(v1, v2)
	}

	for _, v := range p {
		fmt.Println(g.vertices[v].word)
	}
}
