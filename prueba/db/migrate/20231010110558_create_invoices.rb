class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.string :number
      t.date :date
      t.string :customer_name
      t.decimal :total

      t.timestamps
    end
  end
end
