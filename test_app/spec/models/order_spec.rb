require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'belongs_to' do
    # customer = create(:customer)
    # order = create(:order, customer: customer)
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end

  it 'Have 3 orders - create_list' do
    orders = create_list(:order, 3) # we can orverwrite elemnts just by pass a attribute before the ',' ex: "create_list(:customer, 5, description: "Testttt")"
    expect(orders.count).to eq(3)
  end

  it 'has_many' do
    customer = create(:customer_with_orders)
    puts customer.inspect
    puts customer.orders.inspect
    expect(customer.orders.count).to eq(3)
  end
end