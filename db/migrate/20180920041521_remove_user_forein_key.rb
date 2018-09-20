class RemoveUserForeinKey < ActiveRecord::Migration[5.2]
  def up
    remove_foreign_key :sites, :users
  end

  def down
    add_foreign_key :sites, :users
  end
end
