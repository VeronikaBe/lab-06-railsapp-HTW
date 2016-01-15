FactoryGirl.define do
  factory :delicataPumpkin, class: Pumpkin do
    name 'Delicata'
    color 'orange'
    size  's'
    price '5.888'
  end
  factory :carnivalPumpkin, class: Pumpkin do
    name 'Carnival'
    color 'yellow'
    size  'm'
    price '4.120'
  end
end
