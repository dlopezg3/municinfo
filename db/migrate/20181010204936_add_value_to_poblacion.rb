class AddValueToPoblacion < ActiveRecord::Migration[5.2]
  def change
    add_column :poblacions, :value, :integer
  end
end
