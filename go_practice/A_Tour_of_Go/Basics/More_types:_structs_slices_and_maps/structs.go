package main

import "fmt"

type Vertex struct {
	X int
	Y int
}

var (
	v1 = Vertex{X: 1} // 指定していない方にゼロ値が入る
	v2 = Vertex{} // 両方にゼロ値が入る
)

func main() {
	v := Vertex{1, 2}
	v.X = 10
	fmt.Println(v)

	p := &v

	// 構造体のポインタからアクセスする場合、(*p).Xと書けるが、
	// Goではp.Xと書ける
	p.X = 1e9
	fmt.Println(v)
	fmt.Println(v1, v2)
}