puts "Cleaning database"

Municipio.destroy_all
Departamento.destroy_all

puts "creando departamentos"

antioquia = Departamento.create!(nombre: "antioquia")
arauca = Departamento.create!(nombre: "arauca")
cundinamarca = Departamento.create!(nombre: "cundinamarca")
boyaca = Departamento.create!(nombre: "boyaca")

puts "creando municipios"

retiro = Municipio.create!(nombre: "El Retiro", departamento: antioquia)
rionegro = Municipio.create!(nombre: "rionegro", departamento: antioquia)

arauca = Municipio.create!(nombre: "arauquita", departamento: arauca)

chia = Municipio.create!(nombre: "chia", departamento: cundinamarca)
sopo = Municipio.create!(nombre: "sopó", departamento: cundinamarca)

tunja = Municipio.create!(nombre: "tunja", departamento: boyaca)
duitama = Municipio.create!(nombre: "duitama", departamento: boyaca)
sogamoso = Municipio.create!(nombre: "sogamoso", departamento: boyaca)

