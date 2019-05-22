package main

import "fmt"

func main() {
	var i interface{} = "hello"

	// interfaceがstringの値を持っている上で代入する
	// stringの値を持っていない場合panicを引き起こす
	s := i.(string)
	fmt.Println(s)

	//f := i.(float64) // panic! # panic: interface conversion: interface {} is string, not float64

	// interfaceがstringの値を持っていればsはその値になり, okはtrueになる
	s, ok := i.(string)
	fmt.Println(s, ok) // hello true

	// ゼロ値になり、panicが起きない
	f, ok := i.(float64)
	fmt.Println(f, ok) // 0 false
}
