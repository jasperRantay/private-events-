class CreateUserinvts < ActiveRecord::Migration[7.0]
  def change
    create_table :userinvts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :userinv, null: false, foreign_key: true

      t.timestamps
    end
  end
end
