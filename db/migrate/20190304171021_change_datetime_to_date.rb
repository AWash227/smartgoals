class ChangeDatetimeToDate < ActiveRecord::Migration[5.2]
  def change
    change_column :goals, :due_date, :date
    change_column :milestones, :due_date, :date
  end
end
