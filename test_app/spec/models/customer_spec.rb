require 'rails_helper'

RSpec.describe Customer, type: :model do

  fixtures :customers # we can use ":all" to load all fixtures

  it 'Create a Customer' do
    customers = customers(:tulio) # look spec/fixtures/customers.yml
    expect(customers.full_name).to eq("Sr. Tulio Manso") 
  end
end
