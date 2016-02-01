
FactoryGirl.define do

  SKIP_FACTORIES_WHEN_POPULATING << :line_item_1
  SKIP_FACTORIES_WHEN_POPULATING << :line_item_2
  SKIP_FACTORIES_WHEN_POPULATING << :customer

  factory :pumpkin1, class: Pumpkin do
  	name 'Plain Pumpkin 1'
    color 'sparkled'
    size  'l'
    price '7.0'
  end
  factory :pumpkin2, class: Pumpkin do
  	name 'Plain Pumpkin 2'
    color 'sparkled'
    size  'l'
    price '13.0'
  end

  factory :line_item_1, class: Lineitem do
  	association :pumpkin, factory:  :pumpkin1
  	amount 2
  end
  factory :line_item_2, class: Lineitem do
  	association :pumpkin, factory:  :pumpkin2
  	amount 1
  end

  factory :order_with_line_items , class: Order do
    association :customer, factory: :customer
    placed_on { 3.days.ago}
    price 10
    status :new
    after (:build) do | order |
    	create_list(:line_item_1, 1, order: order)
    	create_list(:line_item_2, 1, order: order)
    end
  end
end
