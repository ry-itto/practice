package main

import (
	"fmt"
	"math"
)

func main() {
	var n, d int
	fmt.Scan(&n, &d)

	x := make([][]int, n)
	for i := 0; i < n; i++ {
		x[i] = make([]int, d)
	}

	for i := 0; i < n; i++ {
		for j := 0; j < d; j++ {
			fmt.Scan(&x[i][j])
		}
	}

	c := 0

	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i == j || i > j {
				continue
			}
			sum := 0.0
			for k := 0; k < d; k++ {
			 	sum += math.Pow(float64(x[i][k] - x[j][k]), 2)
			}
			dist := math.Sqrt(sum)
			if math.Ceil(dist) == math.Trunc(dist) {
				c++
			}
		}
	}
	fmt.Println(c)
}
