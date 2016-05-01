-- http://stevedonovan.github.io/Penlight/api/manual/07-functional.md.html
local tablex = require 'pl.tablex'

local books = {}

local populateReadings = function(ids)
  local readings = tablex.map(
    function(x)
      return {
        type = 'book',
        id = x,
        attributes = {
          genre = 'Fiction',
          title = "Book ISBN: " .. x
        }
      }
    end, ids )
  return readings
end

local isbns = {'978-9-16-2345345-0', '978-0-16-2344-0', '978-1-16-444-0', '978-2-16-25552-0'};
local bookCollection = populateReadings(isbns)

function books.getBooks()
  return bookCollection
end

return books