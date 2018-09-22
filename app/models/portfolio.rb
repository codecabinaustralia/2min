class Portfolio < ApplicationRecord
	has_one_attached :image

	def thumbnail
		return self.image.variant(resize: '1000x400')
	end
end
