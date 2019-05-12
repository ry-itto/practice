package main

import (
	"golang.org/x/tour/pic"
)

func Pic(dx, dy int) [][]uint8 {
	image := make([][]uint8, dy)
	for i := range image {
		image[i] = make([]uint8, dx)
	}

	for y, yItems := range image {
		for x := range yItems {
			image[y][x] = uint8((y + x) / 2)
		}
	}

	return image
}

func main() {
	pic.Show(Pic)
}
