class Order < ActiveRecord::Base
	PAYMENT_TYPES = ["Наличный расчет", "Безналичный расчет"]
	STORES = ["Миллер", "Променад"]
	has_many :cart_items, dependent: :destroy
	validates :payment_type, inclusion: PAYMENT_TYPES
	validates :store, inclusion: STORES
	serialize :order_items
	serialize :order_lcodes
	serialize :order_suppliers
	

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
		cart_items.map do |i| i.total_price end.sum
	end

	def ordered_items(cart)
		order_items = Array.new
		cart.cart_items.each do |c_item|
			order_items << "#{c_item.item.title} || L-#{c_item.item.lcode.to_s.rjust(4, '0')}"
		end
		return order_items
	end

	def order_suppl(cart)
		sup = Array.new
		cart.cart_items.each do |c_item|
			sup << c_item.item.supplier_name
		end
		return sup
	end

	#def ordered_items(cart)
	#	order_items = Hash.new 
	#	cart.cart_items.each do |c_item|
	#		order_items.[key] = c_item.item.title
	#		order_items.[value] = c_item.item.lcode
	#	end
	#	order_items
	#end
end
