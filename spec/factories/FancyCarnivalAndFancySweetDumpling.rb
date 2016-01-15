FactoryGirl.define do
  factory :FancyCarnival, class: Pumpkin do
    name 'Fancy Carnival'
    color 'Green & Cream Stripe'
    size  'XL'
    price '12.99'
  end

  factory :FancySweetDumpling, class: Pumpkin do
    name 'Fancy Sweet Dumpling'
    color 'Green & Cream Stripe'
    size  'L'
    price '10.99'
  end
end
