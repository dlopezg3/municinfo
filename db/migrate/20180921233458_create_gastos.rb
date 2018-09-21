class CreateGastos < ActiveRecord::Migration[5.2]
  def change
    create_table :gastos do |t|
      t.string :periodo
      t.references :municipio, foreign_key: true
      t.string :tipo

      t.timestamps
    end
  end
end
