package main

import "fmt"

func main() {
	x := []int{9, 3, 5, 2, 6, 1, 10, 7, 6, 0, -2}
	N := len(x)

	for i := 0; i < N; i++ {
		for j := 0; j < N-1; j++ {
			if x[j] > x[j+1] {
				x[j], x[j+1] = x[j+1], x[j]
			}
		}
	}

	fmt.Println("SORTED:", x)
}
