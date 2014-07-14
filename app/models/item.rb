class Item < ActiveRecord::Base
	validates :title, :lcode, :price, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0}
	validates :title, :lcode, uniqueness: true
	validates :img_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "Загружаемое изображение должно быть в формате JPG, GIF, PNG."
	}
end
