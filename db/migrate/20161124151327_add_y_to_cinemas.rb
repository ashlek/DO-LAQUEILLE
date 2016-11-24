class AddYToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :y, :integer
  end
end
