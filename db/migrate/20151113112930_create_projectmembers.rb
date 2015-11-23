class CreateProjectmembers < ActiveRecord::Migration
  def change
    create_table :projectmembers do |t|
      t.string :email
      t.integer :project_id

      t.timestamps null: false
    end
  end
end
