puts "Example Begin and End"

BEGIN{
puts "Statements inside it will always execute before the program runs."
}

puts "Inside the program block";
puts 1+2;

END{
    puts "this block will always gets executed at the end."
    print 2+2;
}