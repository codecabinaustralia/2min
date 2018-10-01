class AddPersonalDetailsToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :first_name, :string
    add_column :domains, :last_name, :string
    add_column :domains, :address1, :string
    add_column :domains, :city, :string
    add_column :domains, :state_province, :string
    add_column :domains, :postal_code, :string
    add_column :domains, :country, :string
    add_column :domains, :email, :string
    add_column :domains, :phone, :string
    add_column :domains, :fax, :string
  end
end
