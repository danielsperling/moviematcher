class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(movie_id: Movie.find(params[:movie]), user_id: current_user)
    if favorite == []
      Favorite.create(movie_id: Movie.find(params[:movie]), user_id: current_user)
      @favorite_exist = true
    else
      favorite.destroy_all
      @favorite_exist = false
    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
