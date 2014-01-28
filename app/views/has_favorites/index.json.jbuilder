json.array!(@has_favorites) do |has_favorite|
  json.extract! has_favorite, :id, :customer, :recipe
  json.url has_favorite_url(has_favorite, format: :json)
end
