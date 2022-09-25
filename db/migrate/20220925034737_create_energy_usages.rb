class CreateEnergyUsages < ActiveRecord::Migration[6.0]
  def change
    create_table :energy_usages do |t|
      t.float :energy_usages

      t.timestamps
    end
  end
end
