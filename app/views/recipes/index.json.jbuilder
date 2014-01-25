json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :description, :how_to, :tools
  json.url recipe_url(recipe, format: :json)
end
