class Removecolfrombook < ActiveRecord::Migration
  def change
  	remove_column :bookings, :seat_id
  end
end
