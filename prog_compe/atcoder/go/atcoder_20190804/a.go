package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	x := b + c
	y := x - a
	if y < 0 {
		fmt.Println(0)
	} else {
		fmt.Println(y)
	}
}
