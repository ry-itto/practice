package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}

	d := 0
	count := 0
	for i := 1; i <= n + 1; i++ {
		if d <= x {
			count++
		}
		if i == n + 1 {
			break
		}
		d = d + l[i - 1]
 	}

	fmt.Println(count)
}
