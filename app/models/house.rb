class House < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :inquirydetails, dependent: :destroy
  has_many :potentialbuyers, dependent: :destroy
end