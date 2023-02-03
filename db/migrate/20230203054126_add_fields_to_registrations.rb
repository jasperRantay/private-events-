class AddFieldsToRegistrations < ActiveRecord::Migration[7.0]
  def change
    add_column :registrations, :user_id, :integer
  end
end
