class AddFullAddressToResident < ActiveRecord::Migration
  def change
    add_column :residents, :full_street_address, :string
  end
end
