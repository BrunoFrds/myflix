class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :users_who_saved, through: :bookmarks, source: :user

  has_many :reviews, dependent: :destroy
  has_many :users_who_reviewed, through: :reviews, source: :user

  has_many :movie_genres, dependent: :destroy
  has_many :genres, through: :movie_genres

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :average_rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }, allow_nil: true
end
