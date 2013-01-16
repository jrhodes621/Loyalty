class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.integer :member_id
      t.boolean :active

      t.timestamps
    end
  end
end
