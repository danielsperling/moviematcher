class AddMovieToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorites, :movie, null: false, foreign_key: true
  end
end
