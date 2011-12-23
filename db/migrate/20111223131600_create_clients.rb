class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :second_name
      t.date :birth_date

      t.timestamps
    end
  end
end
