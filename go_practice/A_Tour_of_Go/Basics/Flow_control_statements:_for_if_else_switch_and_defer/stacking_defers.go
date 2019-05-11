package main

import "fmt"

func main() {
	fmt.Println("counting")

	// Last In First Outの順番で実行
	for i := 0; i < 10; i++ {
		defer fmt.Println(i)
	}

	fmt.Println("done")
}