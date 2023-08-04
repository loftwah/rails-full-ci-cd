class CreateTestimonies < ActiveRecord::Migration[7.0]
  def change
    create_table :testimonies do |t|
      t.references :user, null: false, foreign_key: true
      t.string :testimony_from_user
      t.string :testimony_title
      t.text :testimony_description

      t.timestamps
    end
  end
end
