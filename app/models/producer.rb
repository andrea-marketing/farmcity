class Producer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  has_many :point_of_sales, dependent: :destroy
  has_many :markets, through: :point_of_sales
  has_many :products, dependent: :destroy
  has_many :reviews, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :contact, presence: true
end
