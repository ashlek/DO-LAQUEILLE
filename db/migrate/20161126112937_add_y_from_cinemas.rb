class AddYFromCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :y, :float
  end
end
