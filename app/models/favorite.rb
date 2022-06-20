class Favorite < ApplicationRecord
  belongs_to :producer
  belongs_to :user
end
