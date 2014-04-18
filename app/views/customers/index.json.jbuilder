json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :email, :status, :username, :password, :settings
  json.url customer_url(customer, format: :json)
end
