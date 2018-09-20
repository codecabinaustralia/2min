class AddTemplateNameToSite < ActiveRecord::Migration[5.2]
  def change
    add_column :sites, :template_name, :string
  end
end
