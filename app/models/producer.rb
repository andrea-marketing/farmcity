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


  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy

  TAGS = ["🍏 Fruits", "🥬 Veggetables", "🥩 Meat", "🥛 Milk", "🧀 Cheese", "🌷 Flowers",
    "🐔 Chicken", "🐮 Cow", "🐐 Goat", "🐑 Sheep", "🐟 Fish", "🐝 Honey", "🥚 Eggs",
    "🍇 Wine", "🥖 Bread"]

  acts_as_taggable_on :categories


  def favorite?(user)
    favorites = []
    self.favorites.each do |favorite|
      if favorite.user == user
        favorites << favorite
      end
    end
    favorites.empty?
  end

  def user_favorite(user)
    favorites = []
    self.favorites.each do |favorite|
      if favorite.user == user
        favorites << favorite
      end
    end
    return favorites[0]
  end

end
