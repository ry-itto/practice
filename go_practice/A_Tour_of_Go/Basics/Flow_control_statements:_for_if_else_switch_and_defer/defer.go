package main

import "fmt"

func main() {
	defer fmt.Println("world") // 関数の最後に実行される
	fmt.Println("hello")
}