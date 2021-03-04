class PagesController < ApplicationController
  def home; end

  def user_profile
    @movies = Movie.all
    @favorite_movies = FavoriteMovie.all
  end
end
