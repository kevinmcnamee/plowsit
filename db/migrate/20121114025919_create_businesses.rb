class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :phone
      t.string :url
      t.string :email

      t.timestamps
    end
  end
end
