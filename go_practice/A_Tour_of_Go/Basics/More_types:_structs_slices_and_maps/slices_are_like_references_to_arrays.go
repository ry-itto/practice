package main

import "fmt"

func main() {
	names := [4]string{
		"John",
		"Paul",
		"George",
		"Ringo",
	} // 配列生成部分
	fmt.Println(names)

	// Slice作成
	a := names[0:2] // 0,1
	b := names[1:3] // 1,2
	fmt.Println(a, b)

	// Sliceの中身を変える
	b[0] = "XXX" // "Paul" -> "XXX"
	fmt.Println(a, b)
	fmt.Println(names)
}