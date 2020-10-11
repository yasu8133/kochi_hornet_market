class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :exhibition
  # 画像がない時はエラー
  validates :image, presence: true
end
