class PlowJob < ActiveRecord::Base
  attr_accessible :business_id, :resident_id

  belongs_to :resident
  belongs_to :business
end
