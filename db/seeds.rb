# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients_list = [ ["Reis","Weiße Körner, die toll schmecken können", "In der Tüte"],
    ["Nudeln", "Schmecken immer super", "In der Tüte"],
    ["Fleisch", "Nomnomnom", "Im Kühlschrank"],
    ["Sahne", "Macht bestimmt nicht fett", "Im Kühlschrank"],
    ["Kartoffeln", "Machen satt", "Im dunklen Schrank"],
    ["Lady", "Besonders für Chinesen gut", "In der Wohnung bis fett genug"],
    ["Milch", "Aber nur Bio Rohmilch", "Im Kühlschrank"]
  ]

customers_list = [["Max", "Mustermann", "blub@blub.com", 2, "mmuster", "sdfsadf",""],
    ["Bla", "Hansen", "bla@blub.com", 2, "kmuster", "sdfsadf",""],
    ["Joerg", "Boll", "blech@blub.com", 2, "jmuster", "sdfsadf",""],
    ["Jürgen", "Iplahub", "ping@pong.com", 2, "tmuster", "sdfsadf",""],
    ["Thorsten", "Müller", "thorsten@blub.com", 2, "xmuster", "sdfsadf",""],
    ["Tom", "Schmidt", "XxxKillor2002@blub.com", 2, "bmuster", "sdfsadf",""],
    ["Otto", "Mustermann", "idaho@blub.com", 2, "amuster", "passwort",""]
  ]

units_list = [["Meter", "Perfekte Maßeinheit, für Rezepte relativ sinnlos"],
    ["Kilogramm","Schon besser"]
  ]

recipes_list = [["Lasagne",2,"NomNom","Nudeln zusammenwerfen",5,"Axt",1],
    ["Steak",5,"NomNomNom","Fleisch in die Pfanne hauen",1,"Messer",2],
    ["Lady am Spieß",4,"NomNomNomNom","Hund in die Pfanne hauen",1,"Spieß",3],
  ]

pictures_list = [["/pfad/zu/bild",1,1,nil],
    ["/pfad/zu/bild2",2,nil,3]
  ]

ingredient_packages_list = [[1,1,1,5],
    [2,2,2,2],
    [2,3,2,3],
    [5,1,2,5],
    [6,3,1,1]
  ]

ingredients_list.each do |ingredient|
  Ingredient.create(:name => ingredient[0], :description => ingredient[1], :storage => ingredient[2])
end

customers_list.each do |customer|
  Customer.create(:first_name => customer[0], :last_name => customer[1], :email => customer[2], :status => customer[3], :username => customer[4], :password => customer[5], :settings => customer[6])
end

units_list.each do |unit|
  Unit.create(:name => unit[0], :description => unit[1])
end

recipes_list.each do |recipe|
  Recipe.create(:name => recipe[0], :time => recipe[1], :description => recipe[2], :howto => recipe[3], :difficulty => recipe[4], :tools => recipe[5], :customer_id => recipe[6])
end

ingredient_packages_list.each do |ingredient_package|
  IngredientPackage.create(:ingredient_id => ingredient_package[0], :recipe_id => ingredient_package[1], :unit_id => ingredient_package[2], :amount => ingredient_package[3])
end

pictures_list.each do |picture|
  Picture.create(:picture => picture[0], :customer_id => picture[1], :recipe_id => picture[2], :ingredient_id => picture[3])
end
