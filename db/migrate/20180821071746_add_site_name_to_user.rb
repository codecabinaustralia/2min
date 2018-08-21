class AddSiteNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :site_name, :string
  end
end
