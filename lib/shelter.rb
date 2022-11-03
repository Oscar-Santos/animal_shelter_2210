# require 'pry'

class Shelter
    attr_reader :name,
                :capacity,
                :pets,
                :patrons

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
        @patrons = []
    end

    def add_pet(pet)
       @patrons << pet
    end

    def call_pets
        @patrons.map do |patron|
            patron.insert(-1,"!")
        end
    end
end