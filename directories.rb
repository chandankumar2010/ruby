#to view current working directory

puts Dir.pwd

#to change directory

Dir.chdir("maths")
puts Dir.pwd

#to create directory

Dir.mkdir("new_directory")

#to delete directory
#to delete a directory we need to empty it first else it will thorw an exception

Dir.delete("new_directory")

#to get the elements inside a directory
# .=> current directory ..=>parent directory

Dir.chdir("..")
puts "\n" + Dir.pwd
puts Dir.entries("..")

#using foreach methods

Dir.foreach(".") do |x|
    puts x
end

#above two methods will only get the contents of current directory not the contents of the sub-directory

puts "-------------------------------------"

#using glob method, this method take the string as an argument then matches the contents of the directory using this pattern and displays the matches

# **=> search recursively(directory and its sub-directories) | * => all file types

contents=Dir.glob("**/*")
contents.each do |x|
    puts x
end
