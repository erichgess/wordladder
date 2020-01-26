package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func Test_Path(t *testing.T) {
	dict := LoadDictionary("./dicts/words", 10, false, false, "")
	assert.NotNil(t, dict)

	v1 := dict.Find("cat")
	assert.Equal(t, 9, v1)

	v2 := dict.Find("dog")
	assert.Equal(t, 0, v2)

	path := dict.Path(v1, v2)
	assert.NotNil(t, path)
	assert.Len(t, path, 4)
	assert.Equal(t, "cat", string(dict.vertices[path[0]].word))
	assert.Equal(t, "cot", string(dict.vertices[path[1]].word))
	assert.Equal(t, "cog", string(dict.vertices[path[2]].word))
	assert.Equal(t, "dog", string(dict.vertices[path[3]].word))
}

func Test_AllPaths(t *testing.T) {
	dict := LoadDictionary("./dicts/words", 10, false, false, "")
	assert.NotNil(t, dict)

	v1 := dict.Find("cat")
	assert.Equal(t, 9, v1)
	paths := dict.AllPaths(v1)
	assert.NotNil(t, paths)

	path := paths.To("dog")
	assert.Len(t, path, 4)
	assert.Equal(t, "cat", string(dict.vertices[path[0]].word))
	assert.Equal(t, "cot", string(dict.vertices[path[1]].word))
	assert.Equal(t, "cog", string(dict.vertices[path[2]].word))
	assert.Equal(t, "dog", string(dict.vertices[path[3]].word))
}

func Test_LongestPath(t *testing.T) {
	dict := LoadDictionary("./dicts/words", 10, false, false, "")
	assert.NotNil(t, dict)

	v1 := dict.Find("cat")
	assert.Equal(t, 9, v1)
	paths := dict.AllPaths(v1)
	assert.NotNil(t, paths)

	longest := paths.Longest()
	assert.NotNil(t, longest)

	assert.Equal(t, "cat", string(dict.vertices[longest[0]].word))
	assert.Equal(t, "cot", string(dict.vertices[longest[1]].word))
	assert.Equal(t, "cog", string(dict.vertices[longest[2]].word))
	assert.Equal(t, "dog", string(dict.vertices[longest[3]].word))
	assert.Equal(t, "dogs", string(dict.vertices[longest[4]].word))
}

func Test_WordNotFound(t *testing.T) {
	dict := LoadDictionary("./dicts/words", 10, false, false, "")
	assert.NotNil(t, dict)

	assert.Equal(t, -1, dict.Find("nada"))
}

var benchmarkDict *Graph

func Benchmark_Path(b *testing.B) {
	if benchmarkDict == nil {
		benchmarkDict = LoadDictionary("./dicts/million.dict", 10000000, false, false, "")
	}

	v1 := benchmarkDict.Find("cat")
	v2 := benchmarkDict.Find("dog")

	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		benchmarkDict.Path(v1, v2)
	}
}

func Benchmark_AllPaths(b *testing.B) {
	if benchmarkDict == nil {
		benchmarkDict = LoadDictionary("./dicts/million.dict", 10000000, false, false, "")
	}

	v1 := benchmarkDict.Find("cat")
	paths := benchmarkDict.AllPaths(v1)

	b.ResetTimer()

	for i := 0; i < b.N; i++ {
		paths.To("dog")
	}
}
