FactoryGirl.define do
  factory :Kali, class: Pumpkin do
    name 'Kali'
    color 'blue'
    size  'dragon-sized'
    price '1337.0'
  end
  factory :Gnome, class: Pumpkin do
    name 'Gnome'
    color 'green'
    size  '5.0'
    price '25.0'
  end
end
