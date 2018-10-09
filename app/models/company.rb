class Company < ApplicationRecord
  has_and_belongs_to_many :user, :dependent => :destroy
  has_many :houses, :dependent => :destroy
  validates :name, :website, :address, :size, :founded_in, :revenue, :synopsis, presence: true, allow_blank: false
  validates :revenue, :size, :founded_in, numericality: true
end
