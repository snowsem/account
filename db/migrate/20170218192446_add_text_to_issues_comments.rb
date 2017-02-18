class AddTextToIssuesComments < ActiveRecord::Migration[5.0]
  def change
    add_column :issue_comments, :issue_id, :string
    add_column :issue_comments, :user_id, :string
    add_column :issue_comments, :text, :string

  end
end
