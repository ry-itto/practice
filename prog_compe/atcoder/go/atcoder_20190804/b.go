package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	c := 0
	for i := 1; i <= n; i++ {
		str := strconv.Itoa(i)
		if len(str)%2 == 1 {
			c++
		}
	}
	fmt.Println(c)
}
