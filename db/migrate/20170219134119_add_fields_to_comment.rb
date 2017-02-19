class AddFieldsToComment < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :outlet_id, :string
    add_column :comments, :user_id, :string
    add_column :comments, :text, :string
  end
end
