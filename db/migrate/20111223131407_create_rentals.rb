class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.datetime :from
      t.datetime :to
      t.float :daily_fee
      t.integer :car_id
      t.integer :client_id

      t.timestamps
    end
  end
end
