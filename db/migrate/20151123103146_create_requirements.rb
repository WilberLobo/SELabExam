class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :name
      t.text :description
      t.string :contact

      t.timestamps null: false
    end
  end
end
