require './lib/shelter'

RSpec.describe Shelter do
    it 'exists' do
        shelter = Shelter.new("Denver Animal Shelter", 3)
        
        expect(shelter).to be_a(Shelter)
    end
end

 