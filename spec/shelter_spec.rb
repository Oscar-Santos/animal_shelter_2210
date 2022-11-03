require './lib/shelter'

RSpec.describe Shelter do
    it 'exists' do
        shelter = Shelter.new("Denver Animal Shelter", 3)
        
        expect(shelter).to be_a(Shelter)
    end

    # it 'can call pets' do
    #     shelter = Shelter.new("Denver Animal Shelter", 3)

    #     shelter.add_pet('Salem')
    #     shelter.add_pet('Beethoven')
    #     shelter.add_pet('Spot')

    #     expect(shelter.call_pets).to eq(["Salem!", "Beethoven!", "Spot!"])
    # end
end

