class CreateSiteServices < ActiveRecord::Migration[5.2]
  def change
    create_table :site_services do |t|
      t.references :site, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
