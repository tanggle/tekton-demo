package main

import (
  "io"
  "log"
  "net/http"
)

var a = "pong"
func pong(w http.ResponseWriter, r *http.Request) {
  io.WriteString(w, a)
}

func main() {
  // Main page
  http.Handle("/", http.StripPrefix("/", http.FileServer(http.Dir("./"))))

  // Health check
  http.HandleFunc("/ping", pong)

  log.Println("Listening...")
  http.ListenAndServe(":8080", nil)
}
