class CreateAccreditationAndLicences < ActiveRecord::Migration[5.2]
  def change
    create_table :accreditation_and_licences do |t|
      t.string :name
      t.string :reference_number

      t.timestamps
    end
  end
end
