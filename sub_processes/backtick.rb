output = `ls`
puts output +"\nStatus:"

# variable $? stores last child process executed exit status
if $?.success?
    puts "Executed successfully"
else
    puts "Failed"
end



puts "\n" + %x(ls) +"\n"

=begin
this will cause to script to terminate at line output=`lazy`

output = `lazy`
puts output
puts "Script ended"
=end

output = `lazy 2>&1`
puts output +"\n"
puts "Script ended successfully"