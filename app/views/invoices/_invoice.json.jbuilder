json.extract! invoice, :id, :event_date, :cliente, :ruc, :cond_venta, :valor_parcial, :total_pagar, :t_pagar_c, :iva_five, :iva_ten, :iva_total, :telefono, :nota_remi, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
