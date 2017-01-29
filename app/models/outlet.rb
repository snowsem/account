class Outlet < ApplicationRecord
  has_many :users, :through => :outlet_users
end
