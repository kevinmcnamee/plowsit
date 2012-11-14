class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :name
      t.string :street
      t.string :city
      t.integer :zip_code
      t.string :state

      t.timestamps
    end
  end
end
