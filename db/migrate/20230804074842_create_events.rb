class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.references :user, null: false, foreign_key: true
      t.string :events_name
      t.text :events_description
      t.string :events_url
      t.datetime :events_start_date
      t.datetime :events_end_date
      t.decimal :events_ticket_price
      t.boolean :events_virtual
      t.string :events_color

      t.timestamps
    end
  end
end
