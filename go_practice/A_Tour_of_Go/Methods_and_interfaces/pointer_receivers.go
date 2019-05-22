package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

// 一般的には以下のようにポインタレシーバと変数レシーバを混在させない.
func (v Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

// レシーバ自身を変更するときはポインタレシーバにする
// *を消しても呼べる
func (v *Vertex) Scale(f float64) {
	v.X = v.X * f
	v.Y = v.Y * f
}

func main() {
	v := Vertex{3, 4}
	v.Scale(10) // 勝手に(&v).Scale(10)として呼び出している
	fmt.Println(v.Abs())
}
