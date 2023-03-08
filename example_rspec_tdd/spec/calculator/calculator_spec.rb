require 'calculator'

# describe Calculator, "About the calculator" do # You can add a text describe for the Class you have
RSpec.describe Calculator, "About the calculator" do # You can add a text describe for the Class you have

    context '#sum' do
        it 'divided by 0' do
            expect{subject.div(3, 0)}.to raise_exception
        end

        it 'divided by 0' do
            expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError)
            expect{subject.div(3, 0)}.to raise_error("divided by 0")
            expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0")
            expect{subject.div(3, 0)}.to raise_error(/divided/)
        end
    end

    context '#sum' do
        it 'with positive numbers' do
            result = subject.sum(5, 7)
            expect(result).to eq(12)
            # expect(result).not_to eq(1) (its not recomended to have more than 1 matchers together)
            # Know the Matchers is important to create tests more expressive
        end

        it 'with negative and positive numbers' do
            result = subject.sum(-5, 7)
            expect(result).to eq(2)
        end

        it 'with negative numbers' do #, puts 'x' in the it, 'xit', to put this pending. Or let the corpse of the 'it...' empty.
            result = subject.sum(-5, -7)
            expect(result).to eq(-12)
        end
    end
end

# To load only a specif test, you can use "rspec folder/folder2/file.rb -e 'text inside the it'"
# or, to execut by the line of 'it' you want: "rspec folder/folder2/file.rb:numberLineIt"
# In "subject(:subject) { described_class.new()}, if i have params, i need to pass the params in the () after 'new'".