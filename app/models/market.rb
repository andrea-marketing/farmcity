class Market < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[name address]

  has_many :point_of_sale, dependent: :destroy
  has_many :producers, through: :point_of_sale

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :market_type, presence: true

  TAGS = ["🛒 Shop", "🧑‍🌾 Market", "🧑‍🍳 Restaurant"]
  acts_as_taggable_on :types_of_point_of_sale
end
