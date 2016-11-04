class AddCategorieToSpectateurs < ActiveRecord::Migration
  def change
    add_column :spectateurs, :categorie, :string
  end
end
