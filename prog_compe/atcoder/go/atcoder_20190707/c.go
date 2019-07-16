package main

import "fmt"

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	if r - l > 2019 {
		fmt.Println(0)
		return
	}
	min := 2019
	for i := l; i < r; i++ {
		for j := i + 1; j <= r; j++ {
			cal := (i * j) % 2019
			if cal < min {
				min = cal
			}
		}
	}
	fmt.Println(min)
}
