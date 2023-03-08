describe 'Equality Matchers' do
    it '#equal - Test if they are the same object' do # The '#' is used for instance methods, and the @ is used for class methods
        x = "ruby"
        y = "ruby"
        expect(x).not_to equal(y)
        expect(x).to equal(x)

        # #equal - Tests if they are the same object (object_id)
        # expect(x).to equal(y) - or - not_to equal(y)
    end

    it '#be - Test if they are the same object' do # The '#' is used for instance methods
        x = "ruby"
        y = "ruby"
        expect(x).not_to be(y)
        expect(x).to be(x)

        # #be - Tests if they are the same object (object_id)
        # expect(x).to be(y) - or - not_to be(y)
    end

    it '#eql - Tests the value/content' do # The '#' is used for instance methods
        x = "ruby"
        y = "ruby"
        expect(x).to eql(y)
    end

    # eql == eq

    it '#eq - Tests the value/content' do # The '#' is used for instance methods
        x = "ruby"
        y = "ruby"
        expect(x).to eq(y)
    end
end




