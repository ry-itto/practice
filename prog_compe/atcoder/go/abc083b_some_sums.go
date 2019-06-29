package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var n, a, b int
	total := 0
	fmt.Scan(&n, &a, &b)

	for i := 1; i <= n; i++ {
		str := strconv.Itoa(i)
		splitted := strings.Split(str, "")
		var sum int
		for _, char := range splitted {
			j, _ := strconv.Atoi(char)
			sum += j
		}

		if sum >= a && sum <= b {
			total += i
		}
	}
	fmt.Println(total)
}
