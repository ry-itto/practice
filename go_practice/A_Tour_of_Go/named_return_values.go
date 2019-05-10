package main

import "fmt"


// 戻り値に名前をつけてやることでreturnに何も書かなくても戻せる.
// 短い関数でのみ使用するべき.
func split(sum int) (x, y int) {
	x = sum * 4 / 9
	y = sum - x
	return
}

func main() {
	fmt.Println(split(17))
}