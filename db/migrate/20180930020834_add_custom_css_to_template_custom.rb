class AddCustomCssToTemplateCustom < ActiveRecord::Migration[5.2]
  def change
    add_column :template_customs, :custom_css, :text
  end
end
