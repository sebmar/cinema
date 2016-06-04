class CreateReservedseats < ActiveRecord::Migration
  def change
    create_table :reserved_seats do |t|
      t.integer :seat_id
      t.integer :booking_id
      t.integer :showing_id

      t.timestamps null: false
    end
  end
end
