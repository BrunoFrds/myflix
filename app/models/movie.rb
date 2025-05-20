class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :users_who_saved, through: :bookmarks, source: :user

  has_many :reviews, dependent: :destroy
  has_many :users_who_reviewed, through: :reviews, source: :user

  has_many :movie_genres, dependent: :destroy
  has_many :genres, through: :movie_genres
end
