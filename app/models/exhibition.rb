class Exhibition < ApplicationRecord
  has_many :images
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  has_one :purchase
end
