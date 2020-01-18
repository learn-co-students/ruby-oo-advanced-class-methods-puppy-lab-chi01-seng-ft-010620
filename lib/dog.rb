# Add your code here
class Dog 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
        @save = save       
    end 

    def self.all
        @@all
    end

    def self.clear_all
        self.all.select! { |empties| empties == self}
    end

    def self.print_all 
        @@all.each {|all_dogs|
            puts all_dogs.name
        }
    end
    
    def save
        @@all << self
    end
end