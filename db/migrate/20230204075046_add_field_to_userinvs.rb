class AddFieldToUserinvs < ActiveRecord::Migration[7.0]
  def change
    add_column :userinvs, :event_id, :string
  end
end
