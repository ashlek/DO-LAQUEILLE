class AddXFromCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :x, :float
  end
end
