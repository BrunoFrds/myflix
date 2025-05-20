class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookmarks, dependent: :destroy
  has_many :saved_movies, through: :bookmarks, source: :movie

  has_many :reviews, dependent: :destroy
  has_many :reviewed_movies, through: :reviews, source: :movie
end
