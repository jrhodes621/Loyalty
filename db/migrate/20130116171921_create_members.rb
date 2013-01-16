class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :points
      t.integer :membertype_id

      t.timestamps
    end
  end
end
