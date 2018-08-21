class Service < ApplicationRecord
  belongs_to :trade, required: false
end
