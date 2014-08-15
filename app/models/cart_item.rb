class CartItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  belongs_to :cart

  def total_price
  	item.sale_cost_final * quantity
  end
end
