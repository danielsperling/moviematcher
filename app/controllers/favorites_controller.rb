class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @movie = Movie.find(params[:movie])
    @user = current_user
    @type = params[:type]
    if @type == 'favorite'
      @user.favorites << @movie
    elsif @type == 'unfavorite'
      @user.favorites.delete(@movie)
    end
  end
end
