json.array!(@users) do |user|
  json.extract! user, :id, :name, :email, :active, :company
  json.url user_url(user, format: :json)
end
