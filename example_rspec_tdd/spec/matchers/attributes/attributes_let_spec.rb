require 'people'

describe 'Attributes' do

    # before(:each) do
    #     @people = People.new
    # end

    let(:people) { People.new } # 'let' is a helper, in 'people' is like we are declaring a function (method) called 'people' that returns the content in 'People.new'
    # but it is only invoked in the moment that i use for the first time 'people.name...'. For each test, is all done again
   it 'have_attributes' do
     people.name = "Tulio"
     people.age = 28

     expect(people).to have_attributes(name: a_string_starting_with("T"), age: (a_value >= 20))
   end

   it 'have_attributes' do
     people.name = "Teodoro"
     people.age = 29

     expect(people).to have_attributes(name: a_string_starting_with("T"), age: (a_value >= 20))
   end
end