class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :domain_name
      t.string :dns_simple_id

      t.timestamps
    end
  end
end
