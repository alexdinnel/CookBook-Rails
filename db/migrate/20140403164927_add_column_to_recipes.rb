class AddColumnToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :stars, :int
  end
end
