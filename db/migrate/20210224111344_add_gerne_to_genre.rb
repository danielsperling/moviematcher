class AddGerneToGenre < ActiveRecord::Migration[6.0]
  def change
    add_column :genres, :gerne, :string
  end
end
