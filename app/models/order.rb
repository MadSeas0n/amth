class Order < ActiveRecord::Base
	PAYMENT_TYPES = ["Наличный расчет", "Безналичный расчет"]
	STORES = ["Миллер", "Променад"]
	has_many :cart_items, dependent: :destroy
	validates :payment_type, inclusion: PAYMENT_TYPES
	validates :store, inclusion: STORES
	

	def add_cart_items_from_cart(cart)
		cart.cart_items.each do |c_item|
			c_item.cart_id = nil
			cart_items << c_item
		end		
	end

	def decrement_quantity(cart)
			cart.cart_items.each do |c_item|
				c_item.item.update_attribute("wh_quantity", c_item.item.wh_quantity - c_item.quantity)
		end
	end
	
	def total_sum
		#cart_items.to_a.sum {|i| i.total_price}
		cart_items.map do |i| i.total_price end.sum
	end
end
