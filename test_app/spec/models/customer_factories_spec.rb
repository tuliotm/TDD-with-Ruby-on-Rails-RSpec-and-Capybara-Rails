require 'rails_helper'

RSpec.describe Customer, type: :model do

  it '#full_name - Overwriting Attributes' do
    customer = create(:customer, name: "Tulio Manso") # forcing the name that i want # "create" creat the data in database
    customer = build(:customer, name: "Tulio Manso") # "build" just use the instance class "custumer" and dont save it on database
    expect(customer.full_name).to eq("Sr. Tulio Manso")
  end

  it '#full_name - Overwriting Attributes' do
    customer = create(:customer, vip: false, days_to_pay: 10) 
    expect(customer.vip).to eq(false)
  end

  it 'Heritage' do
    customer = create(:customer_vip) 
    expect(customer.vip).to eq(true)
  end

  it 'Heritage' do
    customer = create(:customer_default) 
    expect(customer.vip).to eq(false)
  end

  it '#full_name' do
    customer = create(:user) # or create(:customer) # look at spec/factories/customer.rb
    expect(customer.full_name).to start_with("Sr. ")
  end

  it 'Using the attributes_for' do
    attrs = attributes_for(:customer)
    attrs1 = attributes_for(:customer_vip)
    attrs2 = attributes_for(:customer_default)
    puts attrs
    puts attrs1
    puts attrs2
  end

  it 'Using the attributes_for' do
    attrs = attributes_for(:customer)
    customer = Customer.create(attrs)
    expect(customer.full_name).to start_with("Sr. ")
  end

  it { expect{ create(:customer) }.to change{Customer.all.size}.by(1) }
end