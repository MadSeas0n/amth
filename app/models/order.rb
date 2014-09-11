class Order < ActiveRecord::Base
	PAYMENT_TYPES = ["Наличный расчет", "Безналичный расчет"]
	STORES = ["Миллер", "Променад"]
	has_many :cart_items, dependent: :destroy
	validates :payment_type, inclusion: PAYMENT_TYPES
	validates :store, inclusion: STORES
	

	def add_cart_items_from_cart(cart)
		cart.cart_items.each do |item|
			item.cart_id = nil
			cart_items << item			
		end		
	end
	
	def total_sum
		cart_items.map do |i| i.total_price end.sum
	end
end
