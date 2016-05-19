class Klucze < ActiveRecord::Migration
  def change
  	add_foreign_key :showings, :movies
    add_foreign_key :showings, :screens
    add_foreign_key :seats, :screens
    add_foreign_key :bookings, :showings
  end
end
