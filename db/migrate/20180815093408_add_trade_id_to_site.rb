class AddTradeIdToSite < ActiveRecord::Migration[5.2]
  def change
    add_reference :sites, :trade, foreign_key: true
  end
end
