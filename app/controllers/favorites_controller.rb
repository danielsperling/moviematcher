class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(movie: Movie.find(params[:movie]), user: current_user)
    if favorite == []
      Favorite.create(movie: Movie.find(params[:movie]), user: current_user)
      @favorite_exist = true
    else
      favorite.destroy_all
      @favorite_exist = false
    end
  end
end
