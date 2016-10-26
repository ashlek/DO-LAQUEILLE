class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.integer :value
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
