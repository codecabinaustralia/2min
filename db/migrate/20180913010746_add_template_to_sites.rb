class AddTemplateToSites < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :template, foreign_key: true
  end
end
