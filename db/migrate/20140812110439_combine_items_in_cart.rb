class CombineItemsInCart < ActiveRecord::Migration
  def up
  	Cart.all.each do |cart|
  		sums = cart.cart_items.group(:item_id).sum(:quantity)

  		sums.each do |item_id, quantity|
  			if quantity > 1
  				cart.cart_items.where(item_id: item_id).delete_all
  				item = cart.cart_items.build(item_id: item_id)
  				item.quantity = quantity
  				item.save!
  			end
  		end
  	end		
  end
end
