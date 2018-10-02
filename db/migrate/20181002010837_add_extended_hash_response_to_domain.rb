class AddExtendedHashResponseToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :extended_hash_response, :text
  end
end
