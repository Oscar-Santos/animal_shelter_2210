require './lib/shelter'

RSpec.describe Shelter do
    it 'exists' do
        shelter = Shelter.new("Denver Animal Shelter", 3)
        
        expect(shelter).to be_a(Shelter)
    end

    it 'can call pets' do
        shelter = Shelter.new("Denver Animal Shelter", 3)

        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        
        expect(shelter.call_pets).to eq(["Salem!", "Beethoven!", "Spot!"])
    end

    it 'can check if it s over capacity' do
        shelter = Shelter.new("Denver Animal Shelter", 3)

        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        
        expect(shelter.over_capacity?).to eq(false)
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')
        
        expect(shelter.over_capacity?).to eq(true)
    end

    it 'can adopt till it s no longer over capacity' do
        shelter = Shelter.new("Denver Animal Shelter", 3)

        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')

        shelter.adopt
        
        expect(shelter.over_capacity?).to eq(false)
    end
end

