package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
	"time"
)

type stat struct {
	name  string
	value float64
}

type statsCollector struct {
	stats []stat
}

var statsSingleton statsCollector

// AddStat adds a new stat to the collection of stats for this program
// so that they can be printed out in a chosen format at the end of the
// program
func AddStat(name string, value float64) {
	statsSingleton.stats = append(statsSingleton.stats, stat{name, value})
}

// PrintStats prints a list of the names and values of the stats that were
// collected during the execution of this program.
func PrintStats() {
	for _, s := range statsSingleton.stats {
		fmt.Printf("%s: %f\n", s.name, s.value)
	}
}

// PrintStatsCSV prints the stats in CSV format.  The header is can be
// disabled
func PrintStatsCSV(header bool) {
	if header {
		headers := make([]string, len(statsSingleton.stats))
		for i := range statsSingleton.stats {
			headers[i] = statsSingleton.stats[i].name
		}
		fmt.Println(strings.Join(headers, ","))
	}
	stats := make([]string, len(statsSingleton.stats))
	for i := range statsSingleton.stats {
		stats[i] = fmt.Sprintf("%f", statsSingleton.stats[i].value)
	}
	fmt.Println(strings.Join(stats, ","))
}

/*
Set of functions for computing different stats
*/

func newTimer(name string) func() {
	start := time.Now()
	return func() {
		stop := time.Now()
		total := stop.Sub(start).Seconds()
		//fmt.Printf("%s time (sec): %f\n", name, total)
		name := fmt.Sprintf("%s time (sec)", name)
		AddStat(name, total)
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
