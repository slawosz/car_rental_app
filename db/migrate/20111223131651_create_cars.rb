class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :registration
      t.integer :car_type_id
      t.float :daily_fee

      t.timestamps
    end
  end
end
