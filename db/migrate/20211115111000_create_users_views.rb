class CreateUsersViews < ActiveRecord::Migration[5.2]
  def change
    create_table :users_views do |t|

      t.timestamps
    end
  end
end
