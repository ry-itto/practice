package main

import "fmt"

func do(i interface{}) {

	// 型switch
	switch v := i.(type) {
	case int:
		fmt.Printf("Twice %v is %v\n", v, v*2)
	case string:
		fmt.Printf("length of %q is %v\n", v, len(v))
	default:
		fmt.Printf("unknown type %T\n", v)
	}
}

func main() {
	do(21)
	do("hello")
	do(true)
}
