class RemoveNumberCol < ActiveRecord::Migration
  def change
  	remove_column :bookings, :number
  end
end
