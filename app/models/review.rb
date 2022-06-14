class Review < ApplicationRecord
  AUTHORIZED_RATINGS = (0..5)

  belongs_to :producer
  belongs_to :user

  validates :content, presence: true
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
