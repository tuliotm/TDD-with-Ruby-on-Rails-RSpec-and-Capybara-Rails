describe [1, 2] do # the array was instanced and the subject pass to be the array instanced
    it 'Array' do
        expect(subject).to be_kind_of(Array)
    end
end

# describe 'description' do
#     it 'String' do
#         str = "tulio"
#         expect(str.size).to eq(5)
#     end
# end