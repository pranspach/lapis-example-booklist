local config = require("lapis.config")

config("development", {
  port = 8080,
  code_cache = 'off'
})

config("production", {
  port = 8080,
  code_cache = 'on'
})