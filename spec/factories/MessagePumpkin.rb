FactoryGirl.define do
  factory :hell, class: Pumpkin do
    name 'ErrorPumpkin'
    color 'red'
    size  '3'
    price '2'
  end
  factory :purgatory, class: Pumpkin do
    name 'WarningPumpkin'
    color 'Yellow'
    size  '2'
    price '5'
  end
  factory :heaven, class: Pumpkin do
    name 'SuccessPumpkin'
    color 'Green'
    size  '1'
    price '100'
  end
end
