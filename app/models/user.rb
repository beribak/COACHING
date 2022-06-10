class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :lessons, dependent: :destroy
  has_one_attached :photo
  has_many :reviews, through: :lessons
  has_many :bookings, dependent: :destroy
  has_many :answers, dependent: :destroy
end
