require "net/http"
require "uri"
require "cgi"

uri = URI.parse("http://localhost:4567/drink")
p result = Net::HTTP.get(uri)
p CGI.unescape(result)
