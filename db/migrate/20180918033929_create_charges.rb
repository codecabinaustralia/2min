class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :credit_last_4
      t.string :credit_exp_month
      t.string :credit_exp_year
      t.string :credit_brand
      t.decimal :amount
      t.boolean :subscription
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
