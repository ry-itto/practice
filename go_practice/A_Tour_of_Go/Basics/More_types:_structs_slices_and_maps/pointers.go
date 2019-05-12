package main

import "fmt"

func main() {
	i, j := 42, 2701

	p := &i
	fmt.Println(*p) // iの値が出力

	*p = 21 // iに21を代入と同意義
	fmt.Println(i) // 21が出力される

	p = &j
	*p = *p / 37 // j = j / 37と同意義
	fmt.Println(j) // j / 37の結果がでる
}
