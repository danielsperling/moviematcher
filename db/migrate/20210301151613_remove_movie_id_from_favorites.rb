class RemoveMovieIdFromFavorites < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorites, :movie_id, :string
  end
end
