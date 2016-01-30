class Order < ActiveRecord::Base
  belongs_to(:customer)
  has_many :lineitems
  has_many :pumpkins, through: :lineitems
end
