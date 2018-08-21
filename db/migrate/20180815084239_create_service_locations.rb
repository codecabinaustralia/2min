class CreateServiceLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :service_locations do |t|
      t.string :city

      t.timestamps
    end
  end
end
