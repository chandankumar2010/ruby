# ruby regexp are delineated by // symbol
# we match pattern using pattern matching operator '=~'

#to demonstrate a simple pattern matching
#this method will return the starting position of the matched pattern

puts /Ruby/ =~ "The word Ruby is contained in this text"

puts "---------------"

#to demonstrate regexp syntax

#this pattern will match 'igers' characters which might optionally start with letter 't'
pattern = /t?igers/

puts pattern =~ ("ligers")
puts pattern =~ ("tigers")
puts pattern =~ ("bears")
puts pattern =~ "migers"

#regex special characters
# ^(carrot) to match the character at the begining of the line
#$(anchor) to match the charater at the end of the line

# this method will only match if the line started or ended with that specific character
puts "use of ^ and $"
puts /^x/ =~ "xylem"
puts /^x/ =~ "foxes"
puts /z$/ =~ "quiz"
puts /z$/ =~ "zanzibar"

# ^ and $ will only match the start and end of the line, not a string. To match the whole string, not just one line, we use \A and \Z.

#modifier characters, used to define how the pattern matching is to be done. It is added after the final /.
# i: ignore case
puts "---Modifiers---"
puts /yelling/i =~ "I'm not YELLING!"
puts /yelling/ =~ "I'm not YELLING!"

# .(dot) character, .-> it's a wild card character, it can be used to match almost any character
puts "---(dot) charater; it will match any first charater and return the start point"
puts /.ig/ =~ "wig"
puts /.ig/ =~ "pig"
puts /.ig/ =~ "twig"

#We can combine special characters,anchors, and modifiers as needed to create patterns to match the text
puts "---Combined regex symbols; will match any word that ends with 'ickle' ignoring case ---"
puts /.ickle$/i =~ "triCKle"
puts /.ickle$/i =~ "tickle"
puts /.ickle$/i =~ "TRICKLE"
puts /.ickle$/i =~ "tricycle"
puts /.ickle$/i =~ "trickles"

#Repitition symbols:
# +:match one or more occurences of the preceding character
# *:match zero or more occurences of the preceding character
puts "---Repitition symbols: + * ---"
puts /p*ickle/ =~ "pickle"
puts /p*ickle/ =~ "pppppickle"
puts /p*ickle/ =~ "ickle"

puts /p+ickle/ =~ "pickle"
puts /p+ickle/ =~ "pppppickle"
puts /p+ickle/ =~ "ickle"

#Repitition symbols can be used with wild card character(.) to match a pattern of any length of string

puts "--- Repitition with wild card"
puts /^A.*a$/ =~ "Albania"
puts /^A.*a$/ =~ "Argentina"
puts /^A.*a$/ =~ "Afghanistan"
puts /^A.*a$/ =~ "Aa"

#escape character; we can use backslash(\) to escape regex symbols or we can use %r[](here we can use any characters as delimiters, ex- %r||, %r!!), any character can be used in those arbitary delimeters without using the escape sequence(\).

puts /\$/ =~ "$10.56"
puts /\// =~ "forward/slash"
puts %r{/} =~ "foward/slash"

