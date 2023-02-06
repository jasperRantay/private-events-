class CreateInvites < ActiveRecord::Migration[7.0]
  def change
    create_table :invites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.references :registration, null: false, foreign_key: true

      t.timestamps
    end
  end
end
