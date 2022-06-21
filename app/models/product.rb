class Product < ApplicationRecord
  belongs_to :producer
  belongs_to :user

  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true

  # TAGS = [["🍏", "Fruits"], ["🥬", "Vegetables"], ["🥩", "Meat"], ["🥛", "Milk"], ["🧀", "Cheese"], ["🌷", "Flowers"],
          # ["🥬", "Chicken"], ["🥬", "Cow"], ["🥬", "Goat"], ["🥬", "Sheep"], ["🥬", "Fish"], ["🥬", "Honey"], ["🥬", "Eggs"],
          # ["🥬", "Wine"], ["🥬", "Bread"]]

  TAGS = ["🍏 Fruits", "🥬 Vegetables", "🥩 Meat", "🥛 Milk", "🧀 Cheese", "🌷 Flowers",
          "🐔 Chicken", "🐮 Cow", "🐐 Goat", "🐑 Sheep", "🐟 Fish", "🐝 Honey", "🥚 Eggs",
          "🍇 Wine", "🥖 Bread"]


  acts_as_taggable_on :categories

end
