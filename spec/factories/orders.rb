FactoryGirl.define do
  factory :order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    status :new
  end
  factory :order_associated, class: Order do
    placed_on { 3.days.ago}
    status :waiting
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
  factory :orders_with_price, class: Order do
    placed_on {7.days.ago}
    status :new
    price '10.6'
  end
end
