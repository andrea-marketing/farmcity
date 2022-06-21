class Post < ApplicationRecord
  belongs_to :producer

  validates :title, presence: true
  validates :content, presence: true
end
