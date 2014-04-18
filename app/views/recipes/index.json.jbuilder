json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :name, :time, :description, :howto, :difficulty, :tools
  json.url recipe_url(recipe, format: :json)
end
