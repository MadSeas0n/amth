class Item < ActiveRecord::Base
	has_many :cart_items
	before_destroy :ensure_cart_is_empty

	validates :title, :lcode, :price, presence: true
	#validates :price, numericality: {greater_than_or_equal_to: 0}
	validates :title, :lcode, uniqueness: true
	#validates :img_url, allow_blank: true, format: {
	#	with: %r{\.(gif|jpg|png)\Z}i,
	#	message: "Загружаемое изображение должно быть в формате JPG, GIF, PNG."
	#}

	private

	def ensure_cart_is_empty
		if cart_items.empty?
			return true
		else
			errors.add(:base, 'Корзина не пуста!')
			return false			
		end		
	end

	def to_rur(price)
		return price * 36
	end
end
