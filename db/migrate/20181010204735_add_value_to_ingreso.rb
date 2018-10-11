class AddValueToIngreso < ActiveRecord::Migration[5.2]
  def change
    add_monetize :ingresos, :value, currency: { present: false }
  end
end
