package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func Test_Path(t *testing.T) {
	dict := LoadDictionary("./dicts/words", 10, false, false, "")
	v1 := dict.Find("cat")
	v2 := dict.Find("dog")
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
	v1 := dict.Find("cat")
	paths := dict.AllPaths(v1)
	assert.NotNil(t, paths)

	path := paths.To("dog")
	assert.Len(t, path, 4)
	assert.Equal(t, "cat", string(dict.vertices[path[0]].word))
	assert.Equal(t, "cot", string(dict.vertices[path[1]].word))
	assert.Equal(t, "cog", string(dict.vertices[path[2]].word))
	assert.Equal(t, "dog", string(dict.vertices[path[3]].word))
}
