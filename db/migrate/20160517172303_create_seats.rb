class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :row
      t.string :number

      t.timestamps null: false
    end
  end
end
