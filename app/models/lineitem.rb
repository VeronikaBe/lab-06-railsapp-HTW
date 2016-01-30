class Lineitem < ActiveRecord::Base
  belongs_to :order
  belongs_to :pumpkin
end
