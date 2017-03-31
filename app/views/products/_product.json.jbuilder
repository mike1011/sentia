json.extract! product, :id, :name, :price, :owner, :created_at, :updated_at
json.url product_url(product, format: :json)