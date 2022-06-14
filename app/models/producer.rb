class Producer < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  validates :name, presence: true
  validates :address, presence: true
  validates :producer_type, presence: true
  validates :description, presence: true
  validates :contact, presence: true

  has_many :reviews, dependent: :destroy
end
