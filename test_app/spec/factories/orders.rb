FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Order number - #{n}" }
    association :customer, factory: :customer
    #customer
  end
end

# "customer == association :customer...", this second is used to overwrite the factory