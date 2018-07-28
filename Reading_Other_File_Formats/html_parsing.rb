#search using grep
# curl www.google.com | grep google

#Nokogiri: HTML parser ruby gem

require "nokogiri"
require "open-uri"

html_page = Nokogiri::HTML("<html><title>A miniscule HTML page</title></html>")
puts html_page.title 

puts "\n---Using file.open---"
html_page = File.open("index.html") {|file| Nokogiri::HTML(file)}
puts html_page.title

puts "---Open-uri---"
html_page = Nokogiri::HTML(open("http://www.google.com/"))
puts html_page.title
puts html_page.search("p")