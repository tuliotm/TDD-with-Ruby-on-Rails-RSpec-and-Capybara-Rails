describe 'Comparison Matchers' do
    it '>' do
        expect(5).to be > 1
    end

    it '>=' do
        expect(5).to be >= 2
        expect(5).to be >= 5
    end

    it '<' do
        expect(5).to be < 10
    end

    it '<=' do
        expect(5).to be <= 10
        expect(5).to be <= 5
    end

    it 'be_between inclusive' do
        expect(5).to be_between(2, 7).inclusive # The inclusive says that the params values are included to.
        expect(2).to be_between(2, 7).inclusive
        expect(7).to be_between(2, 7).inclusive 
    end

    # it 'be_between inclusive / Aggregate failures' do
    #     aggregate_failures do
    #         expect(5).to be_between(2, 7).inclusive # The inclusive says that the params values are included to.
    #         expect(1).to be_between(2, 7).inclusive
    #         expect(8).to be_between(2, 7).inclusive 
    #     end
    # end

    # it 'be_between inclusive / Aggregate failures', aggregate_failures: true do # or ', :aggregate_failures do
    #         expect(5).to be_between(2, 7).inclusive # The inclusive says that the params values are included to.
    #         expect(1).to be_between(2, 7).inclusive
    #         expect(8).to be_between(2, 7).inclusive 
    # end

    it 'be_between inclusive / Aggregate failures' do
        expect(5).to be_between(2, 7).inclusive # The inclusive says that the params values are included to.
        expect(1).to be_between(2, 7).inclusive
        expect(8).to be_between(2, 7).inclusive 
    end

    it 'be_between inclusive / Aggregate failures' do
        expect(5).to be_between(2, 7).inclusive # The inclusive says that the params values are included to.
        expect(1).to be_between(2, 7).inclusive
        expect(8).to be_between(2, 7).inclusive 
    end

    it 'be_between exclusive' do
        expect(5).to be_between(2, 7).exclusive # The exclusive says that the params values aren't included.
        expect(3).to be_between(2, 7).exclusive
        expect(6).to be_between(2, 7).exclusive 
    end

    it 'match' do
        expect("people@com.br").to match(/..@../) # I have two words(..) before '@' and two words after the '@'
    end

    it 'start_with' do
        expect("some people").to start_with("some")
        expect([1, 2, 3]).to start_with(1)
    end

    it 'end_with' do
        expect("some people").to end_with("people")
        expect([1, 2, 3]).to end_with(3)
    end
end




