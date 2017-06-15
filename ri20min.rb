#!/usr/bin/ruby

class MegaGreeter
    attr_accessor:names

    # Create the object
    def initialize(names = "World")
        @names = names
    end

    # Say hi to everybody
    def say_hi
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("each")
            @names.each do |name|
                puts "Hello #{name}!"
            end
        else
            puts "Hello #{@names}!"
        end        
    end

    def say_bye
        if @names.nil?
            puts "..."
        elsif @names.respond_to?("join")
            # Join the list elements with commas
            puts "Goodbye #{@names.join(",")}. come back soon!"
        else
            puts "Goodbye #{@names}. come back soon!"
        end        
    end
end

if __FILE__ == $0
    mg = MegaGreeter.new
    mg.say_hi
    mg.say_bye

    # Change name = "Miracle"
    mg.names = "Miracle"
    mg.say_hi
    mg.say_bye

    # Change the name to array of names
    mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
    mg.say_hi
    mg.say_bye

    # Change to nil

    mg.names = nil
    mg.say_hi
    mg.say_bye

end