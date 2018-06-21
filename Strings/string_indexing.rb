#to demonstrate string indexing str[start,no_of_chars]
str = "String beans are tasty!"
puts str[0,6]

#replace characters in string
str[0,6] = "Green"
puts str

#to delete substrings, we use empty string
str[16,5]=""
puts str

#insertion, to insert keep length to 0
str[16,0] = "very tasty"
puts str

#to extract single character
puts str[18]

#to get from last character
puts str[-2]

#using range, begin and end chars, both are included in the substring
puts str[7..11]
puts str[7...11]

#extract using range from last char
puts str[-8..-1]
puts str[-8...-1]