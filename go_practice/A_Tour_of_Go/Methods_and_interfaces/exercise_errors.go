package main

import (
	"fmt"
	"math"
)

type ErrNegativeSqrt float64

// eのままにしておくとeがErrNegativeSqrtのため、またエラーメッセージを見に行き、
// このメソッドにたどり着くため、無限ループになってしまう？
func (e ErrNegativeSqrt) Error() string {
	return fmt.Sprintf("cannot Sqrt negative number: %v", float64(e))
}

func Sqrt(x float64) (float64, error) {
	if x < 0 {
		return 0, ErrNegativeSqrt(x)
	}
	var z float64 = 1
	const eps = 10e-15
	for {
		if diff := (z*z - x) / (2 * z); math.Abs(diff) < eps {
			break
		} else {
			z -= diff
		}
	}
	return z, nil
}

func main() {
	if z, err := Sqrt(2); err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(z)
	}
	if z, err := Sqrt(-2); err != nil {
		fmt.Println(err)
	} else {
		fmt.Println(z)
	}
}
