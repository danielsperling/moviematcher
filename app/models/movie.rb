class Movie < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  def self.create_movies(movies)
    movies.each do |movie_hash|
      Movie.create(movie_hash)
    end
  end
end
