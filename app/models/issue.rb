class Issue < ApplicationRecord

  validates :title, :presence=> true
  validates :text, :presence=> true
  has_one :outlet, :primary_key => :outlet_id, :foreign_key => :id
end
