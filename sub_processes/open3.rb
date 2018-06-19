require "Open3"

stdout, stderr, status = Open3.capture3("ls","-l")
puts stdout, stderr,status
puts "----------------------"

#to demo when command in capture3 fails
stdout, stderr, status = Open3.capture3("ls","-z")
puts stdout, stderr, status.success?