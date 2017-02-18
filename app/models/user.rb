class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :presence=> true
  validates :family, :presence=> true

  #before_create :set_not_active

  attr_accessor

  def name=(val)
    self[:name] = val.capitalize
  end
  def surename=(val)
    self[:surename] = val.capitalize
  end
  def family=(val)
    self[:family] = val.capitalize
  end
  def is_admin
    return true if self.admin == 1 #The admin account type
  end



  has_many :outlets, :through=>:outlet_users
  has_one :city

end
