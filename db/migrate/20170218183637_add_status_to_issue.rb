class AddStatusToIssue < ActiveRecord::Migration[5.0]
  def change
    add_column :issue_statuses, :name, :string
    add_column :issue_statuses, :color, :string
    add_column :issues, :outlet_id, :string
    IssueStatus.create(:id => 0, :name => "Открыт", :color => 'text-success')
    IssueStatus.create(:id => 1,:name => "Закрыт", :color => 'text-muted')
    IssueStatus.create(:id => 2,:name => "Отклонен", :color => 'text-warning')
  end
end
