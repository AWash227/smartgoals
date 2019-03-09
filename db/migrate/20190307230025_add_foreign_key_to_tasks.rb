class AddForeignKeyToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :milestone, index: true
    add_foreign_key :tasks, :milestones
  end
end
