package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	alice, bob := 0, 0
	for i, val := range a {
		if i % 2 == 0 {
			alice += val
		} else {
			bob += val
		}
	}

	fmt.Println(math.Abs(float64(alice - bob)))
}