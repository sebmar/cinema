class AddSeatToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :seat, index: true, foreign_key: true
  end
end
