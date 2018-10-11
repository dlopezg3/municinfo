class AddValueToGasto < ActiveRecord::Migration[5.2]
  def change
    add_monetize :gastos, :value, currency: { present: false }
  end
end
