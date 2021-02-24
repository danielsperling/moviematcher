class AddGenreToMovie < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :genre, :string
  end
end
