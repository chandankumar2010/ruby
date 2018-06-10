#program to demo here doc feature

puts "Here doc";

#print on console
print <<HERE
This is to demo multiline
string building functionality
of here doc.

HERE

str = <<var
using here doc to assign multi line
value to a string variable.
var

puts str;