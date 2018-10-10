class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :house, :dependent => :destroy
  has_many :company, :dependent => :destroy
  validates :name, :role, :email, :presence=>true
end