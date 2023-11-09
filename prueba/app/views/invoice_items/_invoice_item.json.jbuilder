json.extract! invoice_item, :id, :name, :description, :quantity, :unit_price, :invoice_id, :created_at, :updated_at
json.url invoice_item_url(invoice_item, format: :json)
