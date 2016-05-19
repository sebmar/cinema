class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.datetime :screening

      t.timestamps null: false
    end
  end
end
