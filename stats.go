package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"time"
)

/*
Set of functions for computing different stats
*/

func newTimer(name string) func() {
	start := time.Now()
	return func() {
		stop := time.Now()
		total := stop.Sub(start).Seconds()
		fmt.Printf("%s time (sec): %f\n", name, total)
	}
}

func indexDuplicates(idx *index) {
	/*type indexStat struct {
		dupes int
		total int
	}
	duplicates := make(map[uint64]indexStat)
	for k, bckt := range idx.index {
		count := make(map[int]int)
		for _, v := range bckt {
			count[v] = count[v] + 1
		}
		dupes := 0
		for _, c := range count {
			if c > 1 {
				dupes++
			}
		}
		duplicates[k] = indexStat{
			dupes: dupes,
			total: len(bckt),
		}
	}

	fmt.Printf("%d/%d buckets have duplicates\n", len(duplicates), len(idx.index))

	totalDupes := 0
	sumPctDupe := 0.0
	for _, c := range duplicates {
		totalDupes += c.dupes
		sumPctDupe += float64(c.dupes) / float64(c.total)
	}
	fmt.Printf("%d total words were duplicated within buckets across the index\n", totalDupes)
	fmt.Printf("Avg pct of a bucket that is duplicate: %f\n", 100.0*sumPctDupe/float64(len(duplicates)))*/
}

func adjListStats(g *Graph) {
	duplicates := make(map[int]int)
	for k, adj := range g.adjList {
		count := make(map[int]int)
		for _, v := range adj {
			count[v] = count[v] + 1
		}

		for _, c := range count {
			if c > 1 {
				duplicates[k] += c - 1
			}
		}
	}

	fmt.Printf("%d/%d vertices have duplicates in their adjacency lists\n", len(duplicates), len(g.vertices))
	dupeEdges := 0
	totalEdges := 0
	for k, c := range duplicates {
		dupeEdges += c
		totalEdges += len(g.adjList[k])
	}
	fmt.Printf("%d/%d adj are duplicates\n", dupeEdges, totalEdges)
}

func dictionaryStats(path string) {
	file, err := os.Open(path)
	if err != nil {
		log.Fatal(err)
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	wordCount := 0
	lenDist := make(map[int]int)

	for scanner.Scan() {
		by := scanner.Bytes()
		word := make([]byte, len(by))
		copy(word, by)

		wordCount++
		lenDist[len(word)]++
	}

	fmt.Printf("Word Count: %d\n", wordCount)
	fmt.Printf("Num Lengths: %d\n", len(lenDist))

	longestWord := 0
	for k := range lenDist {
		if k > longestWord {
			longestWord = k
		}
	}

	for i := 0; i <= longestWord; i++ {
		if v, ok := lenDist[i]; ok {
			fmt.Printf("%d =\t%d\n", i, v)
		}
	}
}
