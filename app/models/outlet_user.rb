class OutletUser < ApplicationRecord

  belongs_to :user
  belongs_to :outlet
end
