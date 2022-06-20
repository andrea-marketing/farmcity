class Market < ApplicationRecord
  has_many :point_of_sale, dependent: :destroy
  has_many :producers, through: :point_of_sale

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
end
