class CreateRegesters < ActiveRecord::Migration[5.2]
  def change
    create_table :regesters do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
