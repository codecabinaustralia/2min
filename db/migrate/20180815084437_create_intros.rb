class CreateIntros < ActiveRecord::Migration[5.2]
  def change
    create_table :intros do |t|
      t.text :content

      t.timestamps
    end
  end
end
