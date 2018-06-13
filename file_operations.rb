#create file
f1=File.open("file1.txt","w")
f1.close
f2=File.open("file2.txt","w")
f2.close
f3=File.open("current_name.txt","w")
f3.close

#to delete a file
files_to_delete = ["file1.txt","file2.txt"]
files_to_delete.each do |x|
    File.delete(x)
end

#to rename a file
File.rename("current_name.txt","new_name.txt")

#To get the file size in bytes
puts File.size("new_name.txt")

#to get last modified
puts File.mtime("new_name.txt")

#to check whether a file exists or not?
if File.exists?("text.txt")
    puts "File exists"
end

#to the full path
puts File.expand_path("")
puts "====="

puts File.basename("text.txt",".txt")
puts File.dirname("text.txt")