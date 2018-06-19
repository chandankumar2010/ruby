#using system method to run external command using subprocesses
#method is equivalent to below mentioned command
#chmod 777 somefile.txt

success = system("chmod","777","somefile.txt")
puts success 


#first argument: which command to run
#subsquent arguments: command line flags

#to demonstrate the script continue to run after an exception

output = system("lazy")
puts output 
puts "Script ended successfully"

