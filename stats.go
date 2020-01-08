package main

import "fmt"

/*
Set of functions for computing different stats
*/

func indexDuplicates(idx *index) {
	type indexStat struct {
		dupes int
		total int
	}
	duplicates := make(map[uint32]indexStat)
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
	fmt.Printf("Avg pct of a bucket that is duplicate: %f\n", 100.0*sumPctDupe/float64(len(duplicates)))
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
