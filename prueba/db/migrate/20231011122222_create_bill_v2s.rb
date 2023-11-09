class CreateBillV2s < ActiveRecord::Migration[7.0]
  def change
    create_table :bill_v2s do |t|
      t.date :event_date
      t.string :cliente
      t.string :ruc
      t.boolean :cond_venta
      t.decimal :valor_parcial, precision: 10, scale: 2
      t.decimal :total_pagar, precision: 10, scale: 2
      t.decimal :iva, precision: 10, scale: 2
      t.string :telefono
      t.string :nota_remi

      t.timestamps
    end
  end
end
