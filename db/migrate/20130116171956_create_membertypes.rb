class CreateMembertypes < ActiveRecord::Migration
  def change
    create_table :membertypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
