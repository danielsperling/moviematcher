class AddUserIdToFavoriteMovie < ActiveRecord::Migration[6.0]
  def change
    add_reference :favorite_movies, :user, null: false, foreign_key: true
  end
end
