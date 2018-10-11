class AddValueToDeuda < ActiveRecord::Migration[5.2]
  def change
    add_monetize :deudas, :value, currency: { present: false }
  end
end
