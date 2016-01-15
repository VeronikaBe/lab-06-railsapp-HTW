FactoryGirl.define do
  factory :penguin, class: Pumpkin do
    name 'Penguin'
    color 'green'
    size  'm'
    price '24.99'
  end
  factory :smallspoon, class: Pumpkin do
    name 'Small Spoon'
    color 'yellow'
    size  's'
    price '14.99'
  end
end
