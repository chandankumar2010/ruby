#CSV: comma separated values
require "csv"
CSV.foreach("contacts.csv") do |line|
    puts line.inspect
end

puts "---Using CSV read function---"
contacts=CSV.read("contacts.csv")
puts contacts.inspect
puts contacts[0].inspect
puts contacts[0][0]

#searching through CSV files; we can use 'find' and 'find_all' method to search in CSV files. These methods are not provided by CSV class but by the array class.

#to search for apple in our CSV file
puts "---Search---"
contact = contacts.find{|x| x[0]=~/^Apple/}
puts contact.inspect

puts "--Find all--"
contact = contacts.find_all {|x| x[0]=~/^Apple/}
puts contact.inspect

#modify CSV file
#add row to CSV file using 

puts "---Add new row---"
CSV.open("contacts.csv","a") do |x|
    new_contact = ["Xiaomi","325-985-1637","Beijing"]
    x.add_row(new_contact)
end

contacts=CSV.read("contacts.csv")
puts contacts.inspect



