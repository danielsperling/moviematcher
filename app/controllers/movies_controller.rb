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
  end

  def favorite
    @movie = Movie.find(params[:id])
    @user = current_user
    @type = params[:type]
    if @type == 'favorite'
      @user.favorites << @movie
      @user.save
    elsif @type == 'unfavorite'
      @user.favorites.delete(@movie)
    end
  end
end
