package main

import "fmt"

func main() {
	var str string

	fmt.Scan(&str)
	m := map[int32]int{}

	for _, s := range(str) {
		m[s] += 1
	}

	c := 0
	for _, v := range m {
		c += 1
		if c > 2 || v != 2 {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}
