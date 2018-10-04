class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :blogs, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorited_blogs, through: :favorites, source: :blog

  mount_uploader :profile_image, ProfileImageUploader

  validates :name, presence: true

  def display_profile_image
    profile_image_url.presence || 'default_user_icon.png'
  end
end
