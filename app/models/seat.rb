class Seat < ActiveRecord::Base
  belongs_to :screen
  has_many :reservedseats
  attr_accessible :screen, :screen_id
  accepts_nested_attributes_for :reservedseats
  attr_accessible :reservedseat, :seat_id
end
