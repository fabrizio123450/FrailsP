json.extract! bill_v2, :id, :event_date, :cliente, :ruc, :cond_venta, :valor_parcial, :total_pagar, :iva, :telefono, :nota_remi, :created_at, :updated_at
json.url bill_v2_url(bill_v2, format: :json)
