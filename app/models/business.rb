class Business < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :url

  has_many :plow_jobs
  has_many :residents, :through => :plow_jobs
end
