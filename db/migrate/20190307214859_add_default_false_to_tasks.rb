class AddDefaultFalseToTasks < ActiveRecord::Migration[5.2]
  def change
    change_column_default :tasks, :complete, false
  end
end
