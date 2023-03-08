require 'people'

shared_examples 'status' do |feeling|
    it "#{feeling}" do
        people.send("#{feeling}!")
        expect(people.status).to eq("Feeling #{feeling.capitalize}!")
    end
end

describe 'People' do
    subject(:people) { People.new }

    include_examples 'status', :happy
    it_behaves_like 'status', :sad
    it_should_behave_like 'status', :very_happy

    # it 'happy!' do
    #     people.happy!
    #     expect(people.status).to eq("Feeling Happy!")
    # end

    # it 'sad!' do
    #     people.sad!
    #     expect(people.status).to eq("Feeling Sad!")
    # end

    # it 'Very Happy!' do
    #     people.very_happy!
    #     expect(people.status).to eq("Feeling Very Happy!")
    # end

end