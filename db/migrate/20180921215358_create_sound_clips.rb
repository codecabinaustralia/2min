class CreateSoundClips < ActiveRecord::Migration[5.2]
  def change
    create_table :sound_clips do |t|
      t.boolean :home
      t.boolean :templates
      t.boolean :template_preview
      t.boolean :email
      t.boolean :site_show
      t.boolean :payment
      t.boolean :domain

      t.timestamps
    end
  end
end
