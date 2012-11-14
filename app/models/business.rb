class Business < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :url
end
