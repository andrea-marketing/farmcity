class Market < ApplicationRecord
  has_many :point_of_sale
  has_many :producers, through: :point_of_sales
end
