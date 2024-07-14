json.extract! home_sale, :id, :home_id, :price, :description, :created_at, :updated_at
json.url home_sale_url(home_sale, format: :json)
