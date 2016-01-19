
# some factories should be skipped to not be built twice by the db:populate task
SKIP_FACTORIES_WHEN_POPULATING ||= []
SKIP_FACTORIES_WHEN_POPULATING << :order_associated_and_priced

PRICES =[4,3,6456,2,34]

FactoryGirl.define do

  # a customer with 5 orders
  # see https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md
  factory :customer_with_priced_orders, class: Customer do
    name "Daisy"
    after(:build) do |customer, evaluator|
      create_list(:order_associated_and_priced, PRICES.size, customer: customer)
    end
  end


  factory :order_associated_and_priced, class: Order do
    sequence(:price) { |n| PRICES[n % PRICES.size] }
    placed_on { 3.days.ago}
    status :new
  end

end
