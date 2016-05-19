class AddShowingToBookings < ActiveRecord::Migration
  def change
    add_reference :bookings, :showing, index: true, foreign_key: true
  end
end
