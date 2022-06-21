class PointOfSale < ApplicationRecord
  belongs_to :producer
  belongs_to :market

  has_one_attached :photo
end
