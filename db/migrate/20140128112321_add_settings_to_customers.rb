class AddSettingsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :settings, :text
  end
end
