class AddStripeIdToCharge < ActiveRecord::Migration[5.2]
  def change
    add_column :charges, :stripe_id, :string
    add_column :charges, :order_title, :string
  end
end
