class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.text :details
      t.string :number

      t.timestamps null: false
    end
  end
end
