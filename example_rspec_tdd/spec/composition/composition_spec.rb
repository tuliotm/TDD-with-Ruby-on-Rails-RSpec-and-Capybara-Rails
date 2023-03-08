describe 'Ruby on Rails' do
    it { is_expected.to start_with("Ruby").and end_with("Rails")}
    it { expect(fruit).to eq('banana').or eq('orange').or eq('grape') }


    # We can transfer the arbitrary helper method for what we call Module Helper Method 
    # def fruit # arbitrary helper method
    #     %w(banana orange grape).sample
    # end
end