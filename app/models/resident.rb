class Resident < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :zip_code

  has_many :plow_jobs
  has_many :businesses, :through => :plow_jobs
end
