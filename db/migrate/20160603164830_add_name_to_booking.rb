class AddNameToBooking < ActiveRecord::Migration
  def change
  	remove_column :bookings, :details
  	add_column :bookings, :name, :string
  	add_column :bookings, :lastname, :string
  	add_column :bookings, :phonenumber, :string
  end
end
