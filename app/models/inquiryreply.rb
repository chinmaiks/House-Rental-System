class Inquiryreply < ApplicationRecord
  belongs_to :inquirydetail
  belongs_to :user
  belongs_to :house
end
