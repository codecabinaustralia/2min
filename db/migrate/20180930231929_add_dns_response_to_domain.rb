class AddDnsResponseToDomain < ActiveRecord::Migration[5.2]
  def change
    add_column :domains, :available, :boolean
    add_column :domains, :premium, :boolean
    add_column :domains, :premium_price, :string
  end
end
