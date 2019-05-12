package main

import "fmt"

func main() {
	a := make([]int, 5) // 長さ5, int型を要素にもつSliceを作成
	printSlice("a", a) // [0, 0, 0, 0, 0]

	b := make([]int, 0, 5) // 長さ0, 容量5, int型を要素に持つSliceを作成
	printSlice("b", b) // []

	c := b[:2] // bの長さを2まで伸ばしたものを作成
	printSlice("c", c) // [0, 0]

	d := c[2:5]
	printSlice("d", d) // [0, 0, 0]
}

func printSlice(s string, x []int) {
	fmt.Printf("%s len=%d cap=%d %v\n", s, len(x), cap(x), x)
}
