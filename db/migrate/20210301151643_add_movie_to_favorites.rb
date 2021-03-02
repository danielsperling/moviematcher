class AddMovieToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :movie, foreign_key: true
  end
end
