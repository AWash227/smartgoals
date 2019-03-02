class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :body
      t.boolean :complete
      t.integer :taskable_id
      t.string :taskable_type

      t.timestamps
    end
  end
end
