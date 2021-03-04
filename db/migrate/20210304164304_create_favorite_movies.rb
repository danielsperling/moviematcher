class CreateFavoriteMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_movies do |t|

      t.timestamps
    end
  end
end
