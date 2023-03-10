FactoryBot.define do
    factory :customer, aliases: [:user] do

        transient do
            upcased false
            qtt_orders 3
        end

        name { Faker::Name.name } # { } used for dinamic attributes
        address { Faker::Address.street_address }
        # email { Faker::Internet.email }

        sequence(:email) { |n| "my_email-#{n}@email.com" } # we can force a start number like "sequence(:email, 35)", or sequence like "...(:email, 'a')"
        
        trait :male do
            gender 'M'
        end

        trait :female do
            gender 'F'
        end

        trait :vip do
            vip true
            days_to_pay 30
        end

        trait :default do
            vip false
            days_to_pay 15
        end

        trait :with_orders do
            after(:create) do |customer, evaluator|
                create_list(:order, evaluator.qtt_orders, customer: customer)
                # create a list of order -> with the qtt that will be send (if nothing be send, its 3) -> and that customer (the client)
            end
        end

        factory :customer_with_orders, traits: [:with_orders]
        factory :customer_male, traits: [:male]
        factory :customer_female, traits: [:female]
        factory :customer_vip, traits: [:vip]
        factory :customer_default, traits: [:default]
        factory :customer_male_vip, traits: [:male, :vip]
        factory :customer_female_vip, traits: [:female, :vip]
        factory :customer_male_default, traits: [:male, :default]
        factory :customer_female_default, traits: [:female, :default]

        after(:create) do |customer, evaluator|
            customer.name.upcase! if evaluator.upcased # it will activate the name.upcased! if the "evaluator.upcased" be true
        end
    end
end