class Sample < ApplicationRecord
  validates :text, :presence=> true
  has_one :outlet, :primary_key => :outlet_id, :foreign_key => :id
  has_one :sample_status, :primary_key => :status, :foreign_key => :id
end
