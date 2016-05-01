-- http://leafo.net/lapis/reference.html
local lapis = require 'lapis'
local books = require 'models.books'

local app = lapis.Application()

app:enable("etlua")
app.layout = require "views.layout"

app:get("index", "/", function(self)
  self.books = books.getBooks()
  return { render = true }
end)

return app