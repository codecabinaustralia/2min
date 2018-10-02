class AddIdTypeToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :registrant_id_number, :string
    add_column :domains, :registrant_id_type, :string
  end
end
