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
var src = flag.String("src", "", "the starting word")
var dest = flag.String("dest", "", "the word you are trying to reach")

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

	fmt.Printf("Finding Path from %s to %s\n", *src, *dest)
	v1 := g.Find(*src)
	v2 := g.Find(*dest)
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
