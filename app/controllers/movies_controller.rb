class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @genre = params['genre']

    if params[:genre] == 'Fantasy'
      @movies = Movie.where('genre LIKE ?', "%#{@genre}%")
    elsif params[:genre] == 'Drama'
      @movies = Movie.where('genre LIKE ?', "%#{@genre}%")
    end
  end
end
