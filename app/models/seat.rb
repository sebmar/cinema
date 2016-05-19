class Seat < ActiveRecord::Base
  belongs_to :screen
  has_many :bookings
end
