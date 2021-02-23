class Movie < ApplicationRecord
  has_many :users

  def self.create_movies(movies)
    movies.each do |movie_hash|
      Movie.create(movie_hash)
    end
  end
end
