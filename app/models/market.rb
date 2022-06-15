class Market < ApplicationRecord
  has_many :point_of_sale, dependent: :destroy
  has_many :producers, through: :point_of_sale
end
