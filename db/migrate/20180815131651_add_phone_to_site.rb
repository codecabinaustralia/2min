class AddPhoneToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :phone, :string
  end
end
