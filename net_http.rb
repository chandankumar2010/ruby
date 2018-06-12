require "net/http"
puts Net::HTTP.get("www.google.com","/")