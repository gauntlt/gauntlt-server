package main

import (
	"github.com/GeertJohan/go.rice"
	"net/http"
)

func main() {
	http.Handle("/", http.FileServer(rice.MustFindBox("http-files").HTTPBox()))
	http.HandleFunc("/hello", hello)
	http.ListenAndServe("127.0.0.1:8080", nil)
}

func hello(w http.ResponseWriter, r *http.Request) {
	http.Error(w, "Error", http.StatusInternalServerError)

	//	w.Write([]byte("hello!"))
}
