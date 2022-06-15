class Product < ApplicationRecord
  belongs_to :producer
  belongs_to :user

  has_many :product_categories
  has_many :categories, through: :product_categories


  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

end
