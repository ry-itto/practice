package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	max := 0
	c := 0
	for i := 1; i < n; i++ {
		if h[i] <= h[i - 1] {
			c++
		} else {
			c = 0
		}
		if c > max {
			max = c
		}
	}
	fmt.Println(max)
}
