# Add your code here
class Dog

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name 
       
        self.save
    end

    def save
        self.class.all << self
      end

    def self.all
        @@all
    end


    def self.print_all
       dog_name = self.all.map do |name|
     name.name
       end
       puts dog_name
    end


    def self.clear_all
        @@all.clear
    end

end