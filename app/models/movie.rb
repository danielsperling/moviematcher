class Movie < ApplicationRecord
  has_many :favorite_movies
  has_many :favorited_by, through: :favorite_movies, source: :user

  def self.create_movies(movies)
    movies.each do |movie_hash|
      Movie.create(movie_hash)
    end
  end
end
