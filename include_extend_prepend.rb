# The include directive includes all methods from the given module and make them available as instance methods in your class:
module Greeting
    def hello
        puts "Hello from module"
    end
end

class GreatDay
    include Greeting

    def hello 
        puts "Hello from Great Day"
        super()
    end
end

class Object
    def bye
        puts "Bye from object"
    end
end

great_day = GreatDay.new()
great_day.hello
great_day.bye
puts GreatDay.ancestors


# The extend directive includes all methods from the given module and make them available as class methods in your class:
module AnotherGreeting
    def hello
        puts "hello from another greeting"
    end
end

class AnotherGreatDay  
    extend AnotherGreeting
end

puts "===================="
puts AnotherGreatDay.hello
puts AnotherGreatDay.singleton_class
puts AnotherGreatDay.singleton_methods
