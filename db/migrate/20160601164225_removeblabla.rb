class Removeblabla < ActiveRecord::Migration
  def change
  	remove_column :reserved_seats, :booking_id
  	remove_column :reserved_seats, :showing_id
  end
end
