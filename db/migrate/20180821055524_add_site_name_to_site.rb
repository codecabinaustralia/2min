class AddSiteNameToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :site_name, :string
  end
end
