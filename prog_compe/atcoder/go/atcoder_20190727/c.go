package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n + 1)
	b := make([]int, n)

	for i := 0; i < n + 1; i ++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i ++ {
		fmt.Scan(&b[i])
	}

	s := 0

	for i := 0; i < n; i++ {
		if b[i] > a[i] {
			s += a[i]
			b[i] -= a[i]
			if b[i] > a[i + 1] {
				s += a[i + 1]
				a[i + 1] = 0
			} else {
				s += b[i]
				a[i + 1] -= b[i]
			}
		} else {
			s += b[i]
			a[i] -= b[i]
		}
	}

	fmt.Println(s)
}