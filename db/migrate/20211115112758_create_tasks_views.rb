class CreateTasksViews < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks_views do |t|

      t.timestamps
    end
  end
end
