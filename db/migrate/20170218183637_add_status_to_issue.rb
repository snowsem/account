class AddStatusToIssue < ActiveRecord::Migration[5.0]
  def change
    add_column :issue_statuses, :name, :string
    add_column :issues, :outlet_id, :string
  end
end
