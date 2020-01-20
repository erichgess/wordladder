package main

import (
	"bufio"
	"fmt"
	"log"
	"os"
	"strings"
	"time"
)

type statValue interface {
	ToString() string
}

type floatStat float64

func (fs floatStat) ToString() string { return fmt.Sprintf("%f", fs) }

type intStat int

func (is intStat) ToString() string { return fmt.Sprintf("%d", is) }

type stat struct {
	name  string
	value statValue
}

var stats []stat

// AddStatFloat adds a new stat to the collection of stats for this program
// so that they can be printed out in a chosen format at the end of the
// program
func AddStatFloat(name string, value float64) {
	stats = append(stats, stat{name, floatStat(value)})
}

// AddStatInt adds a new stat to the collection of stats for this program
// so that they can be printed out in a chosen format at the end of the
// program
func AddStatInt(name string, value int) {
	stats = append(stats, stat{name, intStat(value)})
}

// PrintStats prints a list of the names and values of the stats that were
// collected during the execution of this program.
func PrintStats() {
	for _, s := range stats {
		fmt.Printf("%s: %s\n", s.name, s.value.ToString())
	}
}

// PrintStatsCSV prints the stats in CSV format.  The header is can be
// disabled
func PrintStatsCSV(header bool) {
	if header {
		headers := make([]string, len(stats))
		for i := range stats {
			headers[i] = stats[i].name
		}
		fmt.Println(strings.Join(headers, ","))
	}
	st := make([]string, len(stats))
	for i := range stats {
		st[i] = stats[i].value.ToString()
	}
	fmt.Println(strings.Join(st, ","))
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
		AddStatFloat(name, total)
	}
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

	AddStatInt("Total Vertex", len(g.vertices))
	AddStatInt("Total Duplicate Vertices", len(duplicates))
	dupeEdges := 0
	totalEdges := 0
	for k, c := range duplicates {
		dupeEdges += c
		totalEdges += len(g.adjList[k])
	}
	AddStatInt("Total Edges", totalEdges)
	AddStatInt("Total Duplicate Edges", dupeEdges)
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
