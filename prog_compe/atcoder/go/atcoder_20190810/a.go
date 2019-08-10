package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	c := a + b
	d := a - b
	e := a * b
	m := c
	if m < d {
		m = d
	}
	if m < e {
		m = e
	}

	fmt.Println(m)
}
