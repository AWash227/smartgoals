class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.text :title
      t.text :daily_action
      t.boolean :daily_action_complete
      t.datetime :due_date

      t.timestamps
    end
  end
end
