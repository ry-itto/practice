package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var n int
	fmt.Scan(&n)

	s := make([]string, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}
	//c := 0
	m := make(map[string]int)
	for i := 0; i < n; i++ {
		str := strings.Split(s[i], "")
		sort.Strings(str)
		m[strings.Join(str, "")]++
	}
	c := 0
	for _, val := range m {
		c += (val * (val - 1)) / 2
	}
	fmt.Println(c)
}
