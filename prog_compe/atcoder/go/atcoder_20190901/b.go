package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	c := 1
	s := 0
	for {
		if c >= b {
			break
		}
		c += a - 1
		s++
	}
	fmt.Println(s)
}
