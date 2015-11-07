package main

import "net/http"

func main() {
	http.HandleFunc("/", hello)
	http.ListenAndServe("127.0.0.1:8080", nil)
}

func hello(w http.ResponseWriter, r *http.Request) {
	http.Error(w, "Error", http.StatusInternalServerError)

	//	w.Write([]byte("hello!"))
}
