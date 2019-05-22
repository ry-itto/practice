package main

import "fmt"

func main() {
	// 空のインターフェース
	// 未知の型を扱う場合に使用。fmt.Printlnはこれを引数にとってる
	var i interface{}
	describe(i)

	i = 42
	describe(i)

	i = "hello"
	describe(i)
}

func describe(i interface{}) {
	fmt.Printf("(%v, %T)\n", i, i)
}