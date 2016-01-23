json.array!(@posts) do |post|
  json.extract! post, :id, :name, :price, :quantity
  json.url post_url(post, format: :json)
end
