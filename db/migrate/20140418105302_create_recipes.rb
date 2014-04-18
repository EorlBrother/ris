class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :time
      t.text :description
      t.text :howto
      t.integer :difficulty
      t.text :tools

      t.timestamps
    end
  end
end
