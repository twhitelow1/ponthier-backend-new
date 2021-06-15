class OfferedService < ApplicationRecord
  has_many :quotes, through: :picked_services
  has_many :picked_services
end
