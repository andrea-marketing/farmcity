class Product < ApplicationRecord
  belongs_to :producer
  belongs_to :user

  validates :product_type, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
