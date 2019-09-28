package main

import (
	"fmt"
	"log"
	"net/http"
	"runtime"
)

func handle(w http.ResponseWriter, r *http.Request) {
	os := runtime.GOOS
	fmt.Printf("Ciao mondo da dentro l'orrendo container + VSCode + OS [%s]\n", os)
}

func main() {
	http.HandleFunc("/", handle)
	if err := http.ListenAndServe(":8000", nil); err != nil {
		log.Fatal(err)
	}
}
