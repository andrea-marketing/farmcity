class PointOfSale < ApplicationRecord
  belongs_to :producer
  belongs_to :market

  TAGS = ["shop", "market", "restaurant"]
  acts_as_taggable_on :types_of_point_of_sale
end
