class PointOfSale < ApplicationRecord
  belongs_to :producer
  belongs_to :market
end
