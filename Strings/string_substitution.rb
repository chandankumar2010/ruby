str = "Visual Studio Code is a source code editor developed by Microsoft for Windows, Linux and macOS. It includes support for debugging, embedded Git control, syntax highlighting, intelligent code completion, snippets, and code refactoring."

#to know the index of a substring
puts str.index("Windows")
puts str[70,4]

#to substitute a substring, .sub method returns a new string, instead of replacing it in the original string
#sub method will only replace the first instance of occurence in the string not the all of it
new_str = str.sub("intelligent code completion", "intellisense")
puts new_str

#to perform in place substitution, ruby has 'sub!' method.

#to replace all instances of a string, ruby has 'gsub' methods

#to test whether a particular substring exists in a string, ruby has 'include?' method
#include? returns boolean value
#demo use of include method in if statement
message = "[log message] ERROR: 418 - Exception occured!"
if message.include?("ERROR")
    raise "An unexpected error occured: #{message}"
end

