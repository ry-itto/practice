package main

import "fmt"

func main() {
	var str string
	count := 0
	fmt.Scan(&str)

	for _, c := range str {
		if c == '1' {
			count++
		}
	}
	fmt.Println(count)
}
