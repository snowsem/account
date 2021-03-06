class IssueComment < ApplicationRecord
  has_one :user, :primary_key => :user_id, :foreign_key => :id
  has_one :issue

  validates :text, :presence=> true
end
