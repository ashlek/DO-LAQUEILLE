class CreateSpectateurs < ActiveRecord::Migration
  def change
    create_table :spectateurs do |t|
      t.string :name
      t.text :descripton

      t.timestamps null: false
    end
  end
end
