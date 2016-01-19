# FactoryGirl.define do
#   factory :customer do
#     name "Donald"
#     discount 10.0
#   end
#   factory :trick, class: Customer do
#     name "Trick"
#     discount 0.0
#   end
#   factory :tick, class: Customer do
#     name "Tick"
#     discount 20.0
#   end
#   factory :track, class: Customer do
#     name "Track"
#     discount 5.0
#   end
#
#   factory :customer_with_orders, class: Customer do
#     name "Dagobert"
#     after(:build) do |customer, evaluator|
#       create_list(:order_associated, 5, customer: customer)
#     end
#   end
#
#   factory :customer_orders_with_price, class: Customer do
#     name "Daisy"
#     after(:build) do |customer, evaluator|
#       create_list(:orders_with_price, 3, customer: customer)
#     end
#   end
# end
