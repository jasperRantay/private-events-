class Komibidado < ActiveRecord::Migration[7.0]
  def change
    t.references :komibida, null: false, foreign_key: true

    t.timestamps
  end
end
