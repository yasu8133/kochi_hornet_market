class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code,:prefectures,:municipalities,:building,:address ,presence: true
end
