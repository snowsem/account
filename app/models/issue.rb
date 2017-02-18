class Issue < ApplicationRecord

  validates :title, :presence=> true
  validates :text, :presence=> true
  has_one :outlet, :primary_key => :outlet_id, :foreign_key => :id
  has_one :issue_status, :primary_key => :status, :foreign_key => :id
  has_many :issue_comments
end
