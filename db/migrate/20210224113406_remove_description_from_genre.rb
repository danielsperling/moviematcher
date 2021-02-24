class RemoveDescriptionFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :description, :string
  end
end
