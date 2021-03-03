class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.new
    @movie = Movie.find(params[:movie])
    @favorite.user = current_user
    @favorite.movie = @movie
    @type = params[:type]
    if @type == 'favorite'
      @favorite.save
    elsif @type == 'unfavorite'
      @favorite.delete(@favorite)
    end
  end

  def favorite_params
    params.require(:favorite).permit(:movie_id, :user_id)
  end
end
