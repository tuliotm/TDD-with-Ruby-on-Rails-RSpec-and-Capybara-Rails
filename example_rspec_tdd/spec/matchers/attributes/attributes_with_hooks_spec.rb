require 'people'

describe 'Attributes' do

    before(:context) do
      puts ">>>>>>>>>> BEFORE ALL TESTS"
    end

    after(:all) do
      puts ">>>>>>>>>> AFTER ALL TESTS"
    end

   before(:each) do
     puts "Before"
     @people = People.new
   end

   after(:each) do
    @people.name = "Without name!"
    puts "AFTER >>>>>>> #{@people.inspect}"
   end

   it 'have_attributes' do
     @people.name = "Tulio"
     @people.age = 28

     expect(@people).to have_attributes(name: a_string_starting_with("T"), age: (a_value >= 20))
   end

   it 'have_attributes' do
     @people.name = "Teodoro"
     @people.age = 29

     expect(@people).to have_attributes(name: a_string_starting_with("T"), age: (a_value >= 20))
   end
end