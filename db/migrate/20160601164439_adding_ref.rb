class AddingRef < ActiveRecord::Migration
  def change
  	add_reference :reserved_seats, :seat, index: true, foreign_key: true
  	add_reference :reserved_seats, :booking, index: true, foreign_key: true
  	add_reference :reserved_seats, :showing, index: true, foreign_key: true
  end
end
