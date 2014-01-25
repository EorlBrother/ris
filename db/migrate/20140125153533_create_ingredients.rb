class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string

      t.timestamps
    end
  end
end
