package main

import (
	"golang.org/x/tour/wc"
	"strings"
)

func WordCount(s string) map[string]int {
	wcMap := make(map[string]int)
	words := strings.Fields(s)
	for _, word := range words {
		wcMap[word]++
	}
	return wcMap
}

func main() {
	wc.Test(WordCount)
}

