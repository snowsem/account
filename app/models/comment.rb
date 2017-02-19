class Comment < ApplicationRecord
  has_one :outlet, :primary_key => :outlet_id, :foreign_key => :id
  validates :text, :presence=> true
end
