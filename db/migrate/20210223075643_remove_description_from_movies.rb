class RemoveDescriptionFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :description, :string
  end
end
