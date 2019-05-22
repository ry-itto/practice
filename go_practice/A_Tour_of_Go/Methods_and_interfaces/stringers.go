package main

import "fmt"

type Person struct {
	Name string
	Age  int
}

func (p Person) String() string {
	return fmt.Sprintf("%v (%v years)", p.Name, p.Age)
}

func main() {
	var s fmt.Stringer
	a := Person{"Arthur Dent", 42}
	s = Person{"Zaphod Beeblebrox", 9001}

	fmt.Println(a, s)
}
