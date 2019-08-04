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
	for i := 1; i < n; i++ {
		if h[i] > max {
			max = h[i]
		}
		if max-h[i] > 1 {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
