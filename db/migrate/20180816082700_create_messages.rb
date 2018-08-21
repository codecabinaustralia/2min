class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :full_name
      t.string :email
      t.string :phone
      t.text :content

      t.timestamps
    end
  end
end
