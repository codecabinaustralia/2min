class AddBodyWithDataToTemplate < ActiveRecord::Migration[5.2]
  def change
    add_column :templates, :body_with_data, :text
  end
end
