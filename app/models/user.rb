class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :producers
  has_many :products
  has_many :reviews
  has_many :favorites
  has_many :posts
  has_many :notifications

  has_one_attached :photo

  def unread_count
    self.notifications.where(read: false).count
  end
end
