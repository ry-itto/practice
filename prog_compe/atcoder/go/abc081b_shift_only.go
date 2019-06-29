package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var a []int = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	flag := true
	count := 0

	for flag {
		for index, i := range a {
			if i % 2 != 0 {
				flag = false
				break
			}
			a[index] = i / 2
		}
		if flag {
			count++
		}
	}

	fmt.Println(count)
}
