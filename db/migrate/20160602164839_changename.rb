class Changename < ActiveRecord::Migration
  def change
    rename_table :reserved_seats, :reservedseats
  end
end