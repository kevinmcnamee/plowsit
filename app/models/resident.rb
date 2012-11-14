class Resident < ActiveRecord::Base
  attr_accessible :city, :name, :state, :street, :zip_code
end
