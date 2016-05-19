class Booking < ActiveRecord::Base
	  belongs_to :showing
  	  belongs_to :seat
end
