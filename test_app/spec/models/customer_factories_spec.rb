require 'rails_helper'

RSpec.describe Customer, type: :model do

  it 'Create a Customer' do
    customer = create(:customer) # look at spec/factories/customer.rb
    expect(customer.full_name).to eq("Sr. Tulio Manso") 
  end
end