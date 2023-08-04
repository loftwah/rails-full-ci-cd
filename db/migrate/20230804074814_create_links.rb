class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.references :user, null: false, foreign_key: true
      t.text :links_group
      t.string :links_url
      t.string :links_display_name
      t.string :links_icon
      t.boolean :links_enabled
      t.boolean :links_pinned

      t.timestamps
    end
  end
end
