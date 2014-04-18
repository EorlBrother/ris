class CreateJoinTables < ActiveRecord::Migration
  def change
    create_join_table :customers, :recipes, table_name: :has_favorite
    create_join_table :customers, :recipes, table_name: :has_recipe
    create_join_table :customers, :pictures, table_name: :has_picture
    create_join_table :recipes, :pictures, table_name: :recipe_has_picture
    create_join_table :ingredients, :pictures, table_name: :ingredient_has_picture
  end
end
