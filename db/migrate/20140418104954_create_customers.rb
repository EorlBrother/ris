class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :status
      t.string :username
      t.string :password
      t.text :settings

      t.timestamps
    end
  end
end
