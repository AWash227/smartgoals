class CreateMilestones < ActiveRecord::Migration[5.2]
  def change
    create_table :milestones do |t|
      t.text :title
      t.boolean :complete, default: false
      t.date :due_date
      t.references :goal, foreign_key: true

      t.timestamps
    end
  end
end
