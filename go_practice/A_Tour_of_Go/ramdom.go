package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	fmt.Println(rand.Intn(10))

	// 完全にランダムな値を出力
	rand.Seed(time.Now().UnixNano())
	fmt.Println(rand.Intn(10))
}

