class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :location
      t.string :status
      t.text :duration
      t.integer :price

      t.timestamps
    end
  end
end
