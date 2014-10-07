class SoldItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :cart
end
