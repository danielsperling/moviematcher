class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @title = params['title']
    @genre = params['genre']

    @movies = if params[:genre] == 'Action'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Comedy'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Mystery'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Sci-Fi'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Adventure'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              elsif params[:genre] == 'Fantasy'
                Movie.paginate(page: params[:page], per_page: 32).where('genre LIKE ?', "%#{@genre}%")
              else
                @movies = @movies.paginate(page: params[:page], per_page: 32)
              end

    @movies = Movie.paginate(page: params[:page], per_page: 32).where('title LIKE ?', "%#{@title}%") if params[:title]
  end

  def show
    @movie = Movie.find(params[:id])
    @favorite_exists = !(FavoriteMovie.where(movie: @movie, user: current_user) == [])
  end

  def favorite
    @movie = Movie.find(params[:id])
    type = params[:type]
    if type == 'favorite'
      current_user.favorites << @movie
      @favorite_exists = true
    elsif type == 'unfavorite'
      current_user.favorites.delete(@movie)
      @favorite_exists = false

    end
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end
end
