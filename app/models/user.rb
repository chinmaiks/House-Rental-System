class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :house, :dependent => :destroy
  has_and_belongs_to_many :company, :dependent => :destroy
  validates :name, :role, :email, :presence=>true
end