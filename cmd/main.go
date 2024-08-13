package main

import (
	"net/http"

	"github.com/go-chi/chi/v5"
	"github.com/go-chi/chi/v5/middleware"
	helloRoutes "github.com/ricardorcluna/gostamping/api/routes"
)

func main() {
	r := chi.NewRouter()
	r.Use(middleware.Logger)
	helloRoutes.HelloRoutes(r)
	http.ListenAndServe(":8080", r)
}
