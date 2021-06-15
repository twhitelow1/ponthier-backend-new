class Quote < ApplicationRecord
  has_many :offered_services, through: :picked_services
  has_many :picked_services
end
