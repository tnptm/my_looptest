package main

import (
	"fmt"
)

func main() {
	var counter = int64(0)
	for counter < 1000000000 {
		counter += 1
	}
	fmt.Println("Result: ", counter)
}
