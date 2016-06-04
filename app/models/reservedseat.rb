class Reservedseat < ActiveRecord::Base
	belongs_to :showing
	belongs_to :seat
	belongs_to :booking
	attr_accessible :showing, :showing_id
	attr_accessible :booking, :booking_id
	attr_accessible :seat, :seat_ids
	attr_accessible :reservedseat, :seat_id

end
