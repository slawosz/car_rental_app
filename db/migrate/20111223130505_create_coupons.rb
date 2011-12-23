class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.integer :rental_id
      t.string :name
      t.integer :discount_amount

      t.timestamps
    end
  end
end
