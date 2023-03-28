class AddCustomerRefToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :customer, null: false, foreign_key: true
  end
end
