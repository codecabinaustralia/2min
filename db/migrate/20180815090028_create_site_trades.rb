class CreateSiteTrades < ActiveRecord::Migration[5.2]
  def change
    create_table :site_trades do |t|
      t.references :site, foreign_key: true
      t.references :trade, foreign_key: true

      t.timestamps
    end
  end
end
