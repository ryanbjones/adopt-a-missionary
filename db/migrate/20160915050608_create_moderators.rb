class CreateModerators < ActiveRecord::Migration
  def change
    create_table :moderators do |t|
      t.string :first_name
      t.string :last_name
      t.integer :mission_id

      t.timestamps null: false
    end
  end
end
