class AddFieldToUserinvts < ActiveRecord::Migration[7.0]
  def change
    add_column :userinvts, :event_id, :integer
  end
end
