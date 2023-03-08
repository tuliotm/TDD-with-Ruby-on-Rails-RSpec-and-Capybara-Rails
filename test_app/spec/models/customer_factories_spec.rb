require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name - Overwriting Attributes' do
    customer = create(:customer, name: "Tulio Manso") # forcing the name that i want
    expect(customer.full_name).to eq("Sr. Tulio Manso")
  end

  it '#full_name' do
    customer = create(:user) # or create(:customer) # look at spec/factories/customer.rb
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end