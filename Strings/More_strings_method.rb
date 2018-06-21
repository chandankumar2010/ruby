#some more string formatting methods

#capitalize
puts "monday".capitalize

#downcase
puts "MONDAY".downcase

#reverse
puts "monday".reverse

#length of string
puts "Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.".length

#count chars
puts "Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring.".count("a")

#Chomp, chop, strip, dump [methods to clean up text]

#chomp: removes specific characters from end of the string, by default: \n \r \r\n
#\r: carriage return; means cursor should be moved tot the beginning of the line
#\n: newline separator; cursor should be moved to the new line

#dump; this method will print out all of the characters of the string it's called on

# above methods in action

input = gets
puts input.length
puts input.dump

chomped_input = input.chomp
puts chomped_input
puts chomped_input.length
puts chomped_input.dump

#chomp on arbitary strings as arguments
str = "Hello world!"
chomped_str = str.chomp("world!")
puts chomped_str

#chop methods, removes last character
str = "Hello?"
puts str.chop

#strip methods, it will return a copy of the string it's called with string stripped of all whitespace, from beginning and end, \r, \n, horizontal and vertical tabs and null characters

str = "                         Oh hello!              "
puts str.strip