json.extract! product, :id, :producto, :cantidad, :precio, :iva_ten, :iva_five, :created_at, :updated_at
json.url product_url(product, format: :json)
