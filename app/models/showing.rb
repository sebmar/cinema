class Showing < ActiveRecord::Base
  belongs_to :screen
  belongs_to :movie
  has_many :bookings
  has_many :reservedseats
  attr_accessible :screening, :movie_id, :screen_id

end
