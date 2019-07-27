package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	rIndex := 0

	for i := 0; i <  n - 1; i++ {
		if p[i] > p[i + 1] {
			rIndex = i + 1
		}
	}

	if rIndex == 0 {
		fmt.Println("YES")
		return
	}

	for i := 0; i < n; i++ {
		if p[i] > p[rIndex] {
			tmp := p[i]
			p[i] = p[rIndex]
			p[rIndex] = tmp
			break
		}
	}

	for i := 0; i < n - 1; i++ {
		if p[i] > p[i + 1] {
			fmt.Println("NO")
			return
		}
	}
	fmt.Println("YES")
}