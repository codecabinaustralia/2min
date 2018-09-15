class Site < ApplicationRecord
  belongs_to :user
  belongs_to :template
  has_many :trades
  has_one_attached :featured_image

  validates :phone, presence: { message: "We'll do our best to send you leads but they'll need a number to call?" }
  validates :home_town, presence:{ message: 'We need to tell people your home city, you could also just put ie: Australia' }

end
