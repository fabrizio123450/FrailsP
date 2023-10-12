class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :producto
      t.integer :cantidad
      t.decimal :precio, precision: 10, scale: 2
      t.decimal :iva_ten, precision: 10, scale: 2
      t.decimal :iva_five, precision: 10, scale: 2

      t.timestamps
    end
  end
end
