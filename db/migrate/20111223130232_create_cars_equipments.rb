class CreateCarsEquipments < ActiveRecord::Migration
  def change
    create_table :cars_equipment, :id => false do |t|
      t.integer :car_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
