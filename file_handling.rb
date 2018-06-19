
#In this example we have to manually close the file 
file = File.new("text.txt")
puts file.gets #prints only one line, in this case the first line.
file.close

#In this case ruby automatically closes the file after use
File.open("readme.md") do |x|
    puts x.gets
end

puts

#using iterator to read multiple lines
File.open("text.txt").each do |line|
    puts line
end

file = File.new("readme.md")
file.each do |x|
    puts x
end
file.close

puts "\narray of lines"

#To read file in array of line
array_of_lines = File.readlines("readme.md")
puts array_of_lines

