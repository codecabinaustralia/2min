class AddActivatedToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :activated, :boolean
  end
end
