class CreatePersonalProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_profiles do |t|
      t.string :full_name
      t.text :bio

      t.timestamps
    end
  end
end
