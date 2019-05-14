package main

import (
	"fmt"
	"math"
)

type MyFloat float64

// レシーバを指定してのメソッド宣言は同パッケージ内のものに限定される
func (f MyFloat) Abs() float64 {
	if f < 0 {
		return float64(-f)
	}
	return float64(f)
}

func main() {
	f := MyFloat(-math.Sqrt2)
	fmt.Println(f.Abs())
}
