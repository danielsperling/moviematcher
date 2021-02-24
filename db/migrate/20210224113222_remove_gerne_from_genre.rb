class RemoveGerneFromGenre < ActiveRecord::Migration[6.0]
  def change
    remove_column :genres, :gerne, :string
  end
end
