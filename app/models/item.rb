class Item < ActiveRecord::Base
	has_many :cart_items
	before_destroy :ensure_cart_is_empty
	validates :title, :lcode, presence: true
	validates :title, :lcode, uniqueness: true
	
	mount_uploader :photo, PhotoUploader

	private

	def ensure_cart_is_empty
		if cart_items.empty?
			return true
		else
			errors.add(:base, 'Корзина не пуста!')
			return false			
		end		
	end

end
