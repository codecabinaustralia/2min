class AddCustomCssToSites < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :custom_css, :text
  end
end
