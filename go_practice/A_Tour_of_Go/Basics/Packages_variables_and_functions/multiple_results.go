package Packages_variables_and_functions

import "fmt"

func swap(x, y string) (string, string){
	return y, x
}

func main() {
	a, b := swap("hello", "world")
	fmt.Println(a, b)
}