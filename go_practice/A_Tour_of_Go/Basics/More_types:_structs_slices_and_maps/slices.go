package main

import "fmt"

func main() {
	primes := [6]int{2, 3, 5, 7, 11, 13} // Array
	s := primes[1:4] // Slice primesの要素1から要素3までを含む
	fmt.Println(s)

	// Slice defaults
	s = primes[:] // 全ての要素を持ったSlice
	fmt.Println(s)
	s = primes[:3] // 要素0から要素2までのSliceを生成
	fmt.Println(s)
	// 要素1から最後の要素までのSliceを生成, ここで容量が6から5に変わっている.
	// 容量はSliceの頭を削ると減る.
	s = primes[1:]
	fmt.Println(s)

	// Sliceの長さと容量
	fmt.Println("長さ", len(s))
	fmt.Println("容量", cap(s))

	// Sliceのゼロ値
	var t []int // nil(長さ0, 容量0)
	if t == nil {
		fmt.Println("nil!")
	}
}