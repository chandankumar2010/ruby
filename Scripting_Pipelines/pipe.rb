#Ruby can read from STDIN using ARGF class
#this script can read from another file and capitalizethe first letter of each line.

ARGF.each do |x|
    puts x.capitalize
end