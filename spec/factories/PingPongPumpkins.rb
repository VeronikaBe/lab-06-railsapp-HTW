FactoryGirl.define do
  factory :PingPumpkin, class: Pumpkin do
    name 'Pong Pumpkin'
    color 'white'
    size  'xxs'
    price '0.99'
  end

  factory :PongPumpkin, class: Pumpkin do
    name 'Pong Pumpkin'
    color 'black'
    size  'xxs'
    price '0.99'
  end
end
