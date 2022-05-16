package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	r := gin.Default()

	r.LoadHTMLGlob("./templates/*")

	r.GET("/", func(c *gin.Context) {
		c.HTML(http.StatusOK, "index.tmpl", gin.H{
			"title": "WebApp",
		})
	})

	r.GET("/hc", func(c *gin.Context) {
		c.HTML(http.StatusOK, "healthcheck.tmpl", gin.H{
			"title": "HC-Site",
		})
	})

	r.GET("/health", func(c *gin.Context) {
		c.JSON(200, gin.H{"status": "UP"})
	})

	r.Run("0.0.0.0:9090")
}
