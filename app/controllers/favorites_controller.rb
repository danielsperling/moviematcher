class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favotire.new
    @movie = Movie.find(params[:id])
    @favorite.user = current_user
    @favorite.movie = @movie
    if @favorite.save
      redirect_to movies_path
    else
      render_new
    end
  end
end
