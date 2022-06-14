class Producer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  has_many :point_of_sales
  has_many :markets, through: :point_of_sales
  has_many :products, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :producer_type, presence: true
  validates :description, presence: true
  validates :contact, presence: true

  has_many :reviews, dependent: :destroy
end
