class AddXToCinemas < ActiveRecord::Migration
  def change
    add_column :cinemas, :x, :integer
  end
end
