class CreateMilestones < ActiveRecord::Migration[7.0]
  def change
    create_table :milestones do |t|
      t.references :user, null: false, foreign_key: true
      t.string :milestones_title
      t.text :milestones_description
      t.string :milestones_url
      t.date :milestones_date
      t.string :milestones_icon
      t.boolean :milestones_future

      t.timestamps
    end
  end
end
