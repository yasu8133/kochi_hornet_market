class User < ApplicationRecord
  has_many :exhibitions
  has_one :address
  has_one :payment
end
