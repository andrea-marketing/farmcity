class Review < ApplicationRecord
  belongs_to :producer
  belongs_to :user
  validates :content, presence: true
end
