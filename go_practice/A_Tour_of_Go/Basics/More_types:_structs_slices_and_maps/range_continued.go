package main

import "fmt"

func main() {
	pow := make([]int, 10)

	// indexだけ使用している。valueは捨ててる
	for i := range pow {
		pow[i] = 1 << uint(i)
	}

	// indexを捨ててvalueを使用している。
	for _, value := range pow {
		fmt.Printf("%d\n", value)
	}
}
