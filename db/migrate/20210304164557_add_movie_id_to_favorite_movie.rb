class AddMovieIdToFavoriteMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorite_movies, :movie, null: false, foreign_key: true
  end
end
