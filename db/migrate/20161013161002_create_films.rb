class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :director
      t.integer :note
      t.text :synopsis

      t.timestamps null: false
    end
  end
end
