package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	var count int64 = 0
	sum := 0
	r := 0

	// 尺取法での実装
	for _, num := range a {
		for sum < k {
			if r == n {
				break
			} else {
				sum += a[r]
				r++
			}
		}
		if sum < k {
			break
		}
		// rまでで sum > k になっているため、n - r でr以降（必ずkより大きい）が取れる。+1はsumがkを超えたインデックスを含むため。
		count += int64(n - r + 1)
		// 測り始めを引く
		sum -= num
	}

	fmt.Println(count)
}
