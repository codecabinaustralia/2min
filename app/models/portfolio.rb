class Portfolio < ApplicationRecord
	has_one_attached :image

	def thumbnail
		return self.image.variant(quality: '70')
	end
end
