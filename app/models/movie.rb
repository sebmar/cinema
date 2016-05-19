class Movie < ActiveRecord::Base
	has_many :showings
	attr_accessible :desc, :image, :title
	mount_uploader :image, WrzucaczUploader
end
