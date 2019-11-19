class CreateParkingLots < ActiveRecord::Migration[6.0]
  def change
    create_table :parking_lots do |t|
      t.string :lot
      t.boolean :occupied

      t.timestamps
    end
  end
end
