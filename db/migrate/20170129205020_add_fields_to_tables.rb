class AddFieldsToTables < ActiveRecord::Migration[5.0]
  def change
    add_column :outlet_users, :outlet_id, :integer
    add_column :outlet_users, :user_id, :integer
    add_column :outlet_users, :comment, :text
    add_column :outlet_users, :position, :string
  end
end
