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

	g := LoadDictionary("./words")

	v1 := g.Find("dog")
	v2 := g.Find("cat")
	var p []int
	for i := 0; i < 1000000; i++ {
		p = g.Path(v1, v2)
	}

	for _, v := range p {
		fmt.Println(g.vertices[v].word)
	}
}
