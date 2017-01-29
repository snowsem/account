class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  validates :name, :presence=> true
  validates :family, :presence=> true

attr_accessor

  has_many :outlets, :through=>:outlet_users

end