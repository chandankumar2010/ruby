#Character classes: [<set_of_chars>]
#delineated by [], allows us to match characters contained inside them.

regex = /[Rr]uby/

m1 = regex.match("Ruby")
puts m1.to_s

m2 = regex.match("ruby")
puts m2.to_s

puts "---To demo range of characters---"
m = /[0-9]/.match("2")
puts m.to_s

puts "---Combine character classes---"
puts /[0-9a-z]/.match("a1b2c3").to_s

puts /[a-z0-9]/.match("898").to_s

# Specialized metacharacters that behave like character classes. These can be used as shortcuts.
puts "---Specialized character classes shortcut---"
puts /\d/.match("5").to_s # \d matched numeric digits

puts "---to match exactly any 3 digits"
puts /\d{3}/.match("123456798").to_s