class AddSpectateurIdToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :spectateur_id, :integer
  end
end
