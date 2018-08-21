class AddRoleToPersonalProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :personal_profiles, :role, :string
  end
end
