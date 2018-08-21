class Site < ApplicationRecord
  belongs_to :user
  has_many :trades
  has_one_attached :featured_image
end
