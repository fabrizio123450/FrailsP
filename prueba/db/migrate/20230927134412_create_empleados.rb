class CreateEmpleados < ActiveRecord::Migration[7.0]
  def change
    create_table :empleados do |t|
      t.string :Nombre
      t.string :direccion
      t.string :telefono
      t.date :fechadeEntrada

      t.timestamps
    end
  end
end
