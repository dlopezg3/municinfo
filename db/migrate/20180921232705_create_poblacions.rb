class CreatePoblacions < ActiveRecord::Migration[5.2]
  def change
    create_table :poblacions do |t|
      t.string :periodo
      t.references :municipio, foreign_key: true

      t.timestamps
    end
  end
end
