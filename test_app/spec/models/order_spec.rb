require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'Have 1 order' do
    # customer = create(:customer)
    # order = create(:order, customer: customer)
    order = create(:order)
    expect(order.customer).to be_kind_of(Customer)
  end
end
