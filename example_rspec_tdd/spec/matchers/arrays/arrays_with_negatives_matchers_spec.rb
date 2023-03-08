RSpec::Matchers.define_negated_matcher :exclude, :include

describe Array.new([1, 2, 3]), "Array", type: 'collection' do # Another way to use Tag Filters, in terminal we use "rspec . -t type:collection"
    it '#include' do # 'include' only works for separated elements of the array
        expect(subject).to include(2)
        expect(subject).to include(2, 1)
    end

    it { expect(subject).to exclude(4) }

    it '#match_array' do
        expect(subject).to match_array([2, 3, 1]) # its for exactly elements of array
    end

    it '#contain_exactly', :slow do # In '.rspec' we write the '--tag ~slow' that will exlude all ":slow" tests 
        expect(subject).to contain_exactly(1, 2, 3) # its for exactly elements of array
    end
end