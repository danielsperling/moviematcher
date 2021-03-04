class Movie < ApplicationRecord
  has_many :favorites_movies
  has_many :favorited_by, through: :favorites_movies, source: :user

  def self.create_movies(movies)
    movies.each do |movie_hash|
      Movie.create(movie_hash)
    end
  end
end
