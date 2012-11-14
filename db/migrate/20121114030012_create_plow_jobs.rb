class CreatePlowJobs < ActiveRecord::Migration
  def change
    create_table :plow_jobs do |t|
      t.integer :business_id
      t.integer :resident_id

      t.timestamps
    end
  end
end
