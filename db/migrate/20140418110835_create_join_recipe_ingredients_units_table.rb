class CreateJoinRecipeIngredientsUnitsTable < ActiveRecord::Migration
  def change
    create_table :join_recipe_ingredients_units_tables do |t|
      t.decimal :amount, null: false
      t.integer :recipe_id , null: false
      t.integer :ingredient_id, null: false
      t.integer :unit_id, null: false
      t.timestamps
    end
  end
end
