#'match' method; .match(<string>,<optional, start position to start the match>)

puts /R.*y/.match("Ruby")

#if no match is found, 'nil' is returned
#if match is found instead of starting position of the match, the match method returns MatchData class

# MatchData class : MatchData object contains all of the information resulting from a Regex pattern match. [Regex,Originla String,Matched String, Unmatched String,...]

puts "---MatchData demo---"
m = /Ruby/.match("Scripting with Ruby!")
puts m.string #original string
puts m.regexp #regex used
puts m.to_s #matched string
puts m.pre_match #text preceding the match
puts m.post_match #text proceeding the match

#match method with a block
puts "match method with block"

#this will execute
/Ruby/.match("Scripting with Ruby!") do |m|
    puts m.to_s
end

#this will not execute; no match => nil value returned => block won't execute
/Emerald/.match("Scripting with Ruby!") do |m|
    puts m.to_s
end

#Capture groups: Regexp patterns can be grouped using parantheses, called capture groups
puts "---Capture Groups---"

m = /(abc).*(123).*/i.match("abcdefgh123456789")            #match: abc followed by any no. characters followed by 123 followed by any no of characters

#capture groups represented by parantheses, group the regexp and the text that matches them

puts m.captures.inspect

#inspect method: this method converts the object data into human readable form; in this case, m.captures returns an array: ["abc","123"](Here, each element of this array corresponds to the text matched bya capture group in the Regex pattern.)

#we can also access the MatchData object information using indexes
puts m[0] #original string
puts m[1] #string matched by first capture group
puts m[2] #string matched by 2nd capture group
