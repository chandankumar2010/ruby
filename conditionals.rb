class Conditionals
    @x=gets.to_i
    #if else statement
    =begin
    def if_else
        if @x > 5
            puts "X greater than 5"
        elsif @x<5
            puts "X lesser than 5"
        else
            puts "X is 5"
        end
        
    end
    =end
    puts "------------"
    
    #function to demo if modifier conditionals
    def if_modifier
        puts "X is 5" if @x==5
    end
    puts "------------"

    #unless statement
    def unlessStatement
        puts  "Conditional is false(X!=5)" unless @x==5
    end
    puts "------------"

    #case statement
    def case_statement
        case @x
        when 1
            puts "January"
        when 2
            puts "Feb"
        when 3
            puts "March"
        when 4..12
            puts "Rest of the months"
        else
            puts "Not a month"
        end
    end

end

obj = Conditionals.new
obj.if_else
obj.if_modifier
obj.unlessStatement
obj.case_statement