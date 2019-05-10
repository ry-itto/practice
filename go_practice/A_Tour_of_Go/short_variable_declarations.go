package main

import "fmt"

func main() {
	var i, j int = 1, 2
	k := 3 // var k = 3と同じ. 関数の中でしか使えない
	fmt.Println(i, j, k)
}