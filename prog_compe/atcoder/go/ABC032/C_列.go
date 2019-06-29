package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	s := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&s[i])
	}

	quotient := 1
	r := 0
	count := 0
	answer := 0

	for _, num := range s {
		if num == 0 {
			fmt.Println(n)
			return
		}
	}

	for _, num := range s {
		for quotient <= k {
			if r == n {
				break
			} else {
				quotient *= s[r]
				r++
				count++
			}
		}
		if answer < count - 1 {
			answer = count - 1
		}

		if quotient <= k {
			break
		}
		if quotient >= num {
			quotient /= num
			count -= 1
		}
	}

	fmt.Println(answer)
}
