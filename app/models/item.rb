class Item < ActiveRecord::Base
	has_many :cart_items
	before_destroy :ensure_cart_is_empty
	validates :title, :lcode, presence: true
	validates :title, :lcode, uniqueness: true
	
	mount_uploader :photo, PhotoUploader

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |item|
				csv << item.attributes.values_at(*column_names)				
			end
		end
	end

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
