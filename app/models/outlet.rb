class Outlet < ApplicationRecord
  has_many :users, :through => :outlet_users
  validates :name, :presence=> true
end
