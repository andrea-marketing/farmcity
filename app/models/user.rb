class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :producers, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :notifications, dependent: :destroy

  has_one_attached :photo

  def unread_count
    self.notifications.where(read: false).count
  end
end
