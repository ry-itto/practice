package main

import "fmt"

// パッケージ変数。パッケージ内ならどこからでも参照できる。
var str = "package variable"

func main() {
	fmt.Println(str)
}
