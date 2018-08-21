class AddSubscriptionIdToCustomer < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :subscription_id, :string
  end
end
