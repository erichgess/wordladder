package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"runtime"
	"runtime/pprof"
	"runtime/trace"
)

var cpuprofile = flag.String("cpuprofile", "", "if set, write cpu profile to this file")
var memprofile = flag.String("memprofile", "", "if set, write memory profile to this file")
var traceprofile = flag.String("trace", "", "if set, write trace to give file")
var dict = flag.String("dict", "./dicts/words", "the file containing the set of words to use")
var src = flag.String("src", "", "the starting word")
var dest = flag.String("dest", "", "the word you are trying to reach")
var perfStats = flag.Bool("stats", false, "print out stats about the construction of the word graph")
var indexStats = flag.Bool("index-stats", false, "print stats about the index used to construct the graph")
var printGraph = flag.Bool("print", false, "prints the graph to STDIO, overrides path finding")
var dump = flag.String("dump", "", "when set, intermediate data will be dumped to the given path")
var dictStats = flag.Bool("dict-stats", false, "print out statistics for the given dictionary")
var numBuckets = flag.Int("num-buckets", 8*1024*1024, "set the number of buckets used in the word locality index")
var csv = flag.Bool("csv", false, "format stats in CSV")

func main() {
	flag.Parse()

	if *cpuprofile != "" {
		f, err := os.Create(*cpuprofile)
		defer f.Close()
		if err != nil {
			log.Fatal(err)
		}
		pprof.StartCPUProfile(f)
		defer pprof.StopCPUProfile()
	}

	if *traceprofile != "" {
		f, err := os.Create(*traceprofile)
		if err != nil {
			log.Fatal("failed to open trace file", err)
		}
		defer f.Close()
		trace.Start(f)
		defer trace.Stop()
	}

	if *dump != "" {
		createPathIfNotExists(*dump)
	}

	fmt.Println("Loading Dictionary")
	g := LoadDictionary(*dict, *numBuckets, *indexStats, *perfStats, *dump)
	fmt.Printf("Words: %d\tEdges: %d\n", g.WordCount(), g.EdgeCount())

	if *dictStats {
		dictionaryStats(*dict)
	}

	if *src != "" && *dest != "" {
		fmt.Printf("Finding Path from %s to %s\n", *src, *dest)
		v1 := g.Find(*src)
		v2 := g.Find(*dest)

		if v1 < 0 || v2 < 0 {
			if v1 < 0 {
				fmt.Printf("%s was not found\n", *src)
			}
			if v2 < 0 {
				fmt.Printf("%s was not found\n", *dest)
			}
			return
		}

		fmt.Println("Using Paths")
		paths := g.AllPaths(v1)
		p := paths.To(*dest)
		if len(p) == 0 {
			fmt.Printf("There is no path from %s to %s\n", *src, *dest)
		}
		for _, v := range p {
			fmt.Println(string(g.vertices[v].word))
		}
	} else if *printGraph {
		g.PrintAdjList()
	}

	if *csv {
		PrintStatsCSV(true)
	} else {
		PrintStats()
	}

	if *memprofile != "" {
		runtime.GC()
		memProfile, err := os.Create(*memprofile)
		if err != nil {
			log.Fatal("failed to create mem profile file", err)
		}
		defer memProfile.Close()
		if err := pprof.WriteHeapProfile(memProfile); err != nil {
			log.Fatal("failed to write heap profile", err)
		}
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
