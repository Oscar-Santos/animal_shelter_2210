require './lib/shelter'

RSpec.describe Shelter do
    it 'exists' do
        shelter = Shelter.new("Denver Animal Shelter", 3)
        
        expect(shelter).to be_a(Shelter)
    end

    it 'has attributes' do
        shelter = Shelter.new("Denver Animal Shelter", 3)

        expect(shelter.name).to eq("Denver Animal Shelter")
        expect(shelter.capacity).to eq(3)
        expect(shelter.pets).to eq([])
    end
end

 