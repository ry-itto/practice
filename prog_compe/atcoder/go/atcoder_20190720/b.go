package main

import "fmt"

func main() {
	var n, d int
	fmt.Scan(&n, &d)

	pNum := n / (d * 2 + 1)
	if n % (d * 2 + 1) != 0 {
		pNum++
	}

	fmt.Println(pNum)
}
