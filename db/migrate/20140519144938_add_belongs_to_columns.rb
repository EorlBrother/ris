class AddBelongsToColumns < ActiveRecord::Migration
  def change
    change_table :pictures do |t|
      t.belongs_to :customer
      t.belongs_to :recipe
      t.belongs_to :ingredient
    end

    change_table :recipes do |t|
      t.belongs_to :customer
    end

    create_table :ingredient_packages do |t|
      t.belongs_to :ingredient
      t.belongs_to :recipe
      t.belongs_to :unit
      t.integer :amount
      t.timestamps
    end
  end
end
