# some factories should be skipped to not be built twice by the db:populate task
SKIP_FACTORIES_WHEN_POPULATING ||= []

FactoryGirl.define do

  # a customer and an Order
  SKIP_FACTORIES_WHEN_POPULATING << :customer

  factory :customer do
    name "Donald"
    discount 10.0
  end

  factory :order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    status :new
  end

  # tick, trick, track with an order each
  SKIP_FACTORIES_WHEN_POPULATING << :trick
  SKIP_FACTORIES_WHEN_POPULATING << :tick
  SKIP_FACTORIES_WHEN_POPULATING << :track

  factory :trick, class: Customer do
    name "Trick"
    discount 0.0
  end
  factory :tick, class: Customer do
    name "Tick"
    discount 20.0
  end
  factory :track, class: Customer do
    name "Track"
    discount 5.0
  end
  factory :order1, class: Order do
    association :customer, factory: :track
    placed_on { 6.weeks.ago}
    status :new
  end

  factory :order2, class: Order do
    association :customer, factory: :tick
    placed_on { 80.days.ago}
    status :new
  end
  factory :order3, class: Order do
    association :customer, factory: :trick
    placed_on { 3.days.ago}
    status :new
  end
  # a customer with 5 orders
  SKIP_FACTORIES_WHEN_POPULATING << :order_associated
  factory :customer_with_orders, class: Customer do
    name "Dagobert"
    after(:build) do |customer, evaluator|
      create_list(:order_associated, 5, customer: customer)
    end
  end
  factory :order_associated, class: Order do
    placed_on { 3.days.ago}
    status :waiting
  end


end
