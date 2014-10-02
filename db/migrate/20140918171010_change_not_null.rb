class ChangeNotNull < ActiveRecord::Migration
  def change
   
      change_column_null :customers, :first_name, false
      change_column_null :customers, :last_name, false
      change_column_null :customers, :email, false
      change_column_null :customers, :status, false
      change_column_null :customers, :username, false
      change_column_null :customers, :password, false
      change_column_null :customers, :settings, false
      change_column_null :customers, :created_at, false
    

  
      change_column_null :ingredient_packages, :ingredient_id, false
      change_column_null :ingredient_packages, :recipe_id, false
      change_column_null :ingredient_packages, :unit_id, false
      change_column_null :ingredient_packages, :amount, false
      change_column_null :ingredient_packages, :created_at, false
    

     change_column_null :ingredients, :name, false
     change_column_null :ingredients, :created_at, false
    

 
      change_column_null :pictures, :picture, false
      change_column_null :pictures, :created_at, false
      change_column_null :pictures, :customer_id, false
    

    
      change_column_null :recipes, :name, false
      change_column_null :recipes, :howto, false
      change_column_null :recipes, :difficulty, false
      change_column_null :recipes, :customer_id, false
      change_column_null :recipes, :created_at, false
    

  
      change_column_null :units, :name, false
      change_column_null :units, :created_at, false 
    

  end
end
