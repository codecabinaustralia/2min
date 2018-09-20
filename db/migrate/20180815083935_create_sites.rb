class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :company_name
      t.string :abn
      t.string :home_town
      t.references :user

      t.timestamps
    end
  end
end
