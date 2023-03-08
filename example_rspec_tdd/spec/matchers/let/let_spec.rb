$counter = 0 # The "$" is a global variable, any instance of the class can access this variable

describe "let" do
    let(:count) { $counter += 1 }

    it "memorizes the value" do
        expect(count).to eq(1) # first time invoked the "count"
        expect(count).to eq(1) # second time invoked the "count", but its not counted again the value, because its was memorized in cache
    end

    it "its not cached bettwen the tests" do 
        expect(count).to eq(2) # this is another test, so the "count" is counted +1
    end
end