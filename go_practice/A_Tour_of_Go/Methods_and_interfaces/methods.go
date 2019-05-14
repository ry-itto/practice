package main

import (
	"fmt"
	"math"
)

type Vertex struct {
	X, Y float64
}

// Vertexをレシーバに持つ必要があるAbsメソッドを定義
func (v Vertex) Abs() float64 {
	return math.Sqrt(v.X*v.X + v.Y*v.Y)
}

// func Abs(v Vertex) float64 という感じでも同じようにかける : 関数として

func main() {
	v := Vertex{3, 4}
	fmt.Println(v.Abs())
}
