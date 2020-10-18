class Image < ApplicationRecord
  belongs_to :exhibition, optional: true
  mount_uploader :image_url, ImageUploader
end