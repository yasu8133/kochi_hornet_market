class Image < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :exhibition
  # 画像がない時はエラー
  validates :image, presence: true
  belongs_to :exhibition, optional: true
  mount_uploader :image_url, ImageUploader
end