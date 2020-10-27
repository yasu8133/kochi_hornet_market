class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :nickname, :family_name,:last_name,:kana_family_name,:kana_last_name,:birth, presence: true 

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX }, allow_blank: true

  VALID_PASSWORD_REGEX = /\A[a-z0-9]+\z/i
  validates :password,  length: { minimum: 7 }, format: { with: VALID_PASSWORD_REGEX }, allow_blank: true

  validates :family_name, :last_name,  format: {with: /\A[ぁ-んァ-ン一-龥]/}, allow_blank: true
  validates :kana_family_name, :kana_last_name, format: {with: /\A[ァ-ヶー－]+\z/}, allow_blank: true

  has_one :address
end
