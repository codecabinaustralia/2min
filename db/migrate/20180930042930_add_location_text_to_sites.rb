class AddLocationTextToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :location_text, :text
  end
end
