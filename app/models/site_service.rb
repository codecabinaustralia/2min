class SiteService < ApplicationRecord
  belongs_to :site
  belongs_to :service, required: false
end
