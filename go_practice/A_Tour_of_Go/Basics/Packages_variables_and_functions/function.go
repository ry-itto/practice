package Packages_variables_and_functions

import (
	"fmt"
)

func add(x int, y int) int {
	return x + y
}

// 同じ型の引数の場合省略できる
func divide(x, y int) int {
	return x / y
}

func main() {
	fmt.Println(add(42, 111))
	fmt.Println(divide(42, 3))
}