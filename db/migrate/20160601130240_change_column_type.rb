class ChangeColumnType < ActiveRecord::Migration
  def change
  	change_column :seats, :row, :int
  	change_column :seats, :number, :int
  end
end
