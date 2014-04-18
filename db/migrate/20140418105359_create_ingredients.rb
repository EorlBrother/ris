class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.text :description
      t.text :storage

      t.timestamps
    end
    add_index :ingredients, :name, unique: true
  end
end
