class CreateKombidars < ActiveRecord::Migration[7.0]
  def change
    create_table :kombidars do |t|
      t.integer :user_id
      t.integer :event_id
      t.integer :kobida_id

      t.timestamps
    end
  end
end
