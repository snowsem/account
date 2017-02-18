class AddTitleTextUserIdToIssues < ActiveRecord::Migration[5.0]
  def change

    add_column :issues, :user_id, :integer
    add_column :issues, :title, :string
    add_column :issues, :text, :text
    add_column :issues, :status, :string, default: 0

  end
end
