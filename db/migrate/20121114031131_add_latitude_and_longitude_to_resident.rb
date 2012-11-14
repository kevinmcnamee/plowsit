class AddLatitudeAndLongitudeToResident < ActiveRecord::Migration
  def change
    add_column :residents, :latitude, :float
    add_column :residents, :longitude, :float
  end
end
