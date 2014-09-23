class Item < ActiveRecord::Base
	has_many :cart_items
	before_destroy :ensure_cart_is_empty
	validates :title, :lcode, presence: true
	validates :title, :lcode, uniqueness: true
	has_attached_file :photo, styles: {small: "150x150>"}
	# validates_attachment_content_type :photo, content_type: /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)/
	# validates_attachment_file_name :photo, :matches => [/png\Z/, /jpe?g\Z/]
	do_not_validate_attachment_file_type :photo
	# validates_attachment :photo, allow_blank: true
  # validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  #	:content_type => {:content_type => "image/jpeg", "image/png"},
  #	:size {:in => 0..5.megabytes} 
	

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
