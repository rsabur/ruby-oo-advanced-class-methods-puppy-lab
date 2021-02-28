require 'pry'

class Dog
    
    attr_accessor :name, :save

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all.each
    end

    def self.clear_all
        @@all.clear
    end

    # binding.pry
    def self.print_all
        all.each do |dog|
            puts dog.name
        end
    end

    def save
        @@all << self
    end

end