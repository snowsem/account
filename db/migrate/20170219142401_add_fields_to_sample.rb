class AddFieldsToSample < ActiveRecord::Migration[5.0]
  def change
    add_column :samples, :outlet_id, :string
    add_column :samples, :user_id, :string
    add_column :samples, :telephone, :string
    add_column :samples, :text, :string
  end
end
