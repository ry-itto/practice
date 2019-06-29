package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	sort.Ints(d)

	m := d[(len(d) / 2) - 1]

	for i := len(d) / 2; i < n; i++ {
		if d[i] == m {
			fmt.Println("0")
			return
		}
	}
	count := d[len(d) / 2] - m

	fmt.Println(count)
}