class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @genre = params['genre']

    @movies = if params[:genre] == 'Action'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Comedy'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Mystery'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Sci-Fi'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Adventure'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Fantasy'
                Movie.where('genre LIKE ?', "%#{@genre}%")
              else
                Movie.all
              end
  end
end
