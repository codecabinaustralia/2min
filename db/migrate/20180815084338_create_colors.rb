class CreateColors < ActiveRecord::Migration[5.2]
  def change
    create_table :colors do |t|
      t.string :color_1
      t.string :color_2

      t.timestamps
    end
  end
end
