File.open("new_text.txt","w") do |x|
    x.puts("Some text from inside the program")
end

#this will orverwrite existing file or create one if the file doesn't exists