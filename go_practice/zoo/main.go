package main

import (
	"fmt"

	"./animals"
)

func main() {
	fmt.Println(AppName())

	fmt.Println(animals.DogInJapanese())
	fmt.Println(animals.MonkeyInJapanese())
	fmt.Println(animals.RabbitInJapanese())
}


