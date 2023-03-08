require 'people'

describe 'Attributes' do
    it 'have_attributes' do
        people = People.new
        people.name = "Tulio"
        people.age = 28
        expect(people).to have_attributes(name: starting_with("T"), age: (be >= 20))
        # It can be 'a_string_starting_with("T")', or 'start_with', and 'a_value >= x'
    end
end