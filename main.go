package main

import "github.com/gofiber/fiber/v2"

func main() {
	app := fiber.New()
	app.Get("/healthz", func(c *fiber.Ctx) error { return c.JSON(fiber.Map{"status": "ok"}) })
	app.Get("/api/v1/events", func(c *fiber.Ctx) error { return c.JSON(fiber.Map{"items": []string{}}) })
	_ = app.Listen(":8080")
}
