package main

import "fmt"

func main() {
	g := LoadDictionary("./words")

	fmt.Println(g)
}
