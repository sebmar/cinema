class AddScreensToShowings < ActiveRecord::Migration
  def change
    add_reference :showings, :screen, index: true, foreign_key: true
  end
end
