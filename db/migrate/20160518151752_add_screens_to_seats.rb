class AddScreensToSeats < ActiveRecord::Migration
  def change
    add_reference :seats, :screen, index: true, foreign_key: true
  end
end
