package helloRoutes

import (
	"github.com/go-chi/chi/v5"
	helloController "github.com/ricardorcluna/gostamping/api/controllers"
)

func HelloRoutes(r chi.Router) {
	r.Group(func(r chi.Router) {
		r.Route("/hello", func(r chi.Router) {
			r.Get("/", helloController.GetHello)
		})
	})
}
