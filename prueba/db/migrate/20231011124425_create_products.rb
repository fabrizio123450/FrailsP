class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :cant
      t.string :producto
      t.decimal :precio, precision: 10, scale: 2
      t.decimal :v_venta, precision: 10, scale: 2

      t.timestamps
    end
  end
end
