class AddShowingToMovies < ActiveRecord::Migration
  def change
    add_reference :showings, :movie, index: true, foreign_key: true
  end
end
