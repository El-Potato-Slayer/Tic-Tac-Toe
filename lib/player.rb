class Person 
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

class Player < Person
    attr_reader :sign
    def initialize(name, sign)
        @sign = sign 
        super(name)
    end

    def print
        puts "Name: #{@name}, Sign: #{@sign}"
    end
end
