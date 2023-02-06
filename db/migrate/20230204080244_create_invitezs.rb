class CreateInvitezs < ActiveRecord::Migration[7.0]
  def change
    create_table :invitezs do |t|
      t.references :inviter, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
