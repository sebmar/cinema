class Booking < ActiveRecord::Base
	  belongs_to :showing
	  has_many :reservedseats
	  attr_accessible :showing, :showing_id
	  attr_accessible :booking, :name
	  attr_accessible :booking, :lastname
	  attr_accessible :booking, :phonenumber
	  accepts_nested_attributes_for :reservedseats
	  validates :name, presence: true
	  validates :lastname, presence: true
	  validates :phonenumber, presence: true
end
