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

puts "crando ingresos"

ing_ret = Ingreso.create!(
  municipio: retiro,
  value_centavos: 100000000,
  )

ing_rionegro = Ingreso.create!(
  municipio: rionegro,
  value_centavos: 100000000,
  )

ing_arauca = Ingreso.create!(
  municipio: arauca,
  value_centavos: 100000000,
  )

ing_chia = Ingreso.create!(
  municipio: chia,
  value_centavos: 100000000,
  )

ing_sopo = Ingreso.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )

ing_tunja = Ingreso.create!(
  municipio: tunja,
  value_centavos: 100000000,
  )

ing_duitama = Ingreso.create!(
  municipio: duitama,
  value_centavos: 100000000,
  )

ing_sogamoso = Ingreso.create!(
  municipio: sogamoso,
  value_centavos: 100000000,
  )

ing_sopo = Ingreso.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )
puts "crando gastos"

ing_ret = Gasto.create!(
  municipio: retiro,
  value_centavos: 100000000,
  )

ing_rionegro = Gasto.create!(
  municipio: rionegro,
  value_centavos: 100000000,
  )

ing_arauca = Gasto.create!(
  municipio: arauca,
  value_centavos: 100000000,
  )

ing_chia = Gasto.create!(
  municipio: chia,
  value_centavos: 100000000,
  )

ing_sopo = Gasto.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )

ing_tunja = Gasto.create!(
  municipio: tunja,
  value_centavos: 100000000,
  )

ing_duitama = Gasto.create!(
  municipio: duitama,
  value_centavos: 100000000,
  )

ing_sogamoso = Gasto.create!(
  municipio: sogamoso,
  value_centavos: 100000000,
  )

ing_sopo = Gasto.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )
puts "crando deudas"

ing_ret = Gasto.create!(
  municipio: retiro,
  value_centavos: 100000000,
  )

ing_rionegro = Gasto.create!(
  municipio: rionegro,
  value_centavos: 100000000,
  )

ing_arauca = Gasto.create!(
  municipio: arauca,
  value_centavos: 100000000,
  )

ing_chia = Gasto.create!(
  municipio: chia,
  value_centavos: 100000000,
  )

ing_sopo = Gasto.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )

ing_tunja = Gasto.create!(
  municipio: tunja,
  value_centavos: 100000000,
  )

ing_duitama = Gasto.create!(
  municipio: duitama,
  value_centavos: 100000000,
  )

ing_sogamoso = Gasto.create!(
  municipio: sogamoso,
  value_centavos: 100000000,
  )

ing_sopo = Gasto.create!(
  municipio: sopo,
  value_centavos: 100000000,
  )
