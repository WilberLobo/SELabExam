class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :user_email
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
