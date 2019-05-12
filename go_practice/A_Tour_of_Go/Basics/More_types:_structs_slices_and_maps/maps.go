package main

import "fmt"

type Vertex struct {
	Lat, Long float64
}

var m map[string]Vertex

func main() {
	m = make(map[string]Vertex)
	m["Bell Labs"] = Vertex{
		40.68, -74.3999,
	}
	fmt.Println(m)

	v := map[string]Vertex { // 型名が省略できている
		"Bell Labs" : {40.63, -74.2, },
	}
	fmt.Println(v)

	// 要素の削除
	delete(m, "Bell Labs")
	// 存在するか確認。
	elem, ok := m["Bell Labs"]
	fmt.Println(elem) // ゼロ値
	fmt.Println(ok) // 存在時true, ない場合false
}