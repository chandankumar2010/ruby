class DS
    def arrays
        ar = ["Hello","World",27,05,2018,"May"]
        ar.each do|i|
            puts i
        end
    end

    def hashes
        months = {1=>"January",
                  2=>"Febuary",
                  3=>"March"}

        months.each do |key, value|
            puts "#{key}  #{value}"
        end
    end

    def ranges
        (10..15).each do|num|
            print "#{num} "
        end
        puts

        1.upto(10){ |num|
            print num
        }
        puts
        10.downto(1){ |num|
            print num
        }
        puts
        'a'.upto('f'){ |char|
            print char
        }

    end
end

arr = DS.new
arr.arrays

hsh = DS.new
hsh.hashes

puts "---------"

rng = DS.new
rng.ranges
