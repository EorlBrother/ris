class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_index :units, :name, unique: true
  end
end
