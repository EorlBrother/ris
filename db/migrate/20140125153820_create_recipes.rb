class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :how_to
      t.string :tools

      t.timestamps
    end
  end
end
