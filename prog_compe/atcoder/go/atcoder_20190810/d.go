package main

import "fmt"

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	a := make([]int, n)
	b := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i], &b[i])
	}

}
