package main

import "fmt"

func main() {
	g := LoadDictionary("./words")

	p := g.Path(g.Find("zzz"), g.Find("zzz"))

	for _, v := range p {
		fmt.Println(g.vertices[v].word)
	}
}
