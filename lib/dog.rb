class Dog
    attr_reader :dog_name

    @@all = []

    def initialize(dog_name)
        @dog_name = dog_name 
        save
    end 

    def self.all
        @@all
    end 

    def self.clear_all
        @@all = []
    end 

    def self.print_all
        dog_names = self.all.map do |dogs|
            dogs.dog_name
        end 
        puts dog_names
    end 

    def save
        @@all << self
    end 

    def name 
        @dog_name = dog_name 
    end 

end 