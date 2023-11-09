json.extract! empleado, :id, :Nombre, :direccion, :telefono, :fechadeEntrada, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
