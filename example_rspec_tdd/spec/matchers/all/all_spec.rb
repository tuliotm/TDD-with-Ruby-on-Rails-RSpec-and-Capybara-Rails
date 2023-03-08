                                    # We use 'rspec . -t collection' use tag filters like this
                            # we can use only ':collection' (random name), the rspec will understand that he is by default 'true'
describe 'all', collection: true do # collection: is a random name to use the Tag Filters
    it { expect([1, 7, 9]).to all (be_odd). and be_an(Integer) }
    it { expect(['ruby', 'rails']).to all( be_a(String).and include('r')) }
end

describe 'all', :collection do 
    it { expect([1, 7, 9]).to all (be_odd). and be_an(Integer) }
    it { expect(['ruby', 'rails']).to all( be_a(String).and include('r')) }
end


# In '.rspec' we write ' --tag type:collection ' to use all collections just by doing 'rspec .'