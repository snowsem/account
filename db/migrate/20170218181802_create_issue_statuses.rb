class CreateIssueStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :issue_statuses do |t|

      t.timestamps
    end
  end
end
