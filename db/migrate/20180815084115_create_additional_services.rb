class CreateAdditionalServices < ActiveRecord::Migration[5.2]
  def change
    create_table :additional_services do |t|
      t.string :title
      t.references :trade, foreign_key: true

      t.timestamps
    end
  end
end
