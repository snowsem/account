class CreateIssueComments < ActiveRecord::Migration[5.0]
  def change
    create_table :issue_comments do |t|

      t.timestamps
    end
  end
end
