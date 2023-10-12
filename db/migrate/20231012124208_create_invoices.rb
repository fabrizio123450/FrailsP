class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.date :event_date
      t.string :cliente
      t.string :ruc
      t.boolean :cond_venta
      t.decimal :valor_parcial, precision: 10, scale: 2
      t.decimal :total_pagar, precision: 10, scale: 2
      t.string :t_pagar_c
      t.decimal :iva_five, precision: 10, scale: 2
      t.decimal :iva_ten, precision: 10, scale: 2
      t.decimal :iva_total, precision: 10, scale: 2
      t.string :telefono
      t.string :nota_remi

      t.timestamps
    end
  end
end
