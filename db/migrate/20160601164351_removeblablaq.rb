class Removeblablaq < ActiveRecord::Migration
  def change
  	remove_column :reserved_seats, :seat_id
  end
end
