package main

import (
	"fmt"
	"math"
)

func Sqrt(x float64) float64 {
	var z float64 = 1
	const eps = 10e-15
	for {
		if diff := (z*z - x) / (2 * z); math.Abs(diff) < eps {
			break
		} else {
			z -= diff
		}
	}
	return z
}

func main() {
	fmt.Println(Sqrt(2))
	fmt.Println(math.Sqrt(2) - Sqrt(2)) // 一致した
}