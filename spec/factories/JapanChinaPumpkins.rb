FactoryGirl.define do
  factory :japanPumpkin, class: Pumpkin do
    name 'Japan Pumpkin'
    color 'blue'
    size  'm'
    price '40.0'
  end

  factory :chinaPumpkin, class: Pumpkin do
    name 'China Pumpkin'
    color 'red'
    size  'l'
    price '30.0'
  end
end