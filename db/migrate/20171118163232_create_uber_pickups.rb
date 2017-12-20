class CreateUberPickups < ActiveRecord::Migration[5.1]
  def change
    create_table :uber_pickups do |t|
      t.datetime :pickup_time
      t.string :pickup_place

      t.timestamps
    end
  end
end
