package main

import "fmt"

type I interface {
	M()
}

type T struct {
	S string
}

// nilをレシーバに渡されても適切に処理するメソッドを書くのが一般的
func (t *T) M() {
	if t == nil {
		fmt.Println("<nil>")
		return
	}
	fmt.Println(t.S)
}

func main() {
	var i I
	var t *T
	i = t
	describe(i)
	i.M() // i: nil

	i = &T{"hello"}
	describe(i)
	i.M() // i: not nil
}

func describe(i I) {
	fmt.Printf("(%v, %T)\n", i, i)
}