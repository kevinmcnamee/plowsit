class Resident < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :zip_code, :latitude, :longitude, :full_street_address

  has_many :plow_jobs
  has_many :businesses, :through => :plow_jobs

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode

end
