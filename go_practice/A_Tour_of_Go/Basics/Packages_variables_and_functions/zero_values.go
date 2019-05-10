package Packages_variables_and_functions

import "fmt"

func main() {
	var i int // ゼロ値として0が与えられる
	var f float64 // ゼロ値として0が与えられる
	var b bool // ゼロ値としてfalseが与えられる
	var s string // ゼロ値として""空文字が与えられる
	fmt.Printf("%v %v %v %q\n", i, f, b, s)
}