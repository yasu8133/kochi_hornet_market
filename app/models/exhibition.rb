class Exhibition < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    has_many :images
    # DB実装したら記述起こす
    # belongs_to :user
    # belongs_to :category
    # belongs_to :brand
    has_one :purchase

    belongs_to_active_hash :prefecture
    belongs_to_active_hash :shippingcharges
    belongs_to_active_hash :shippingdate

    # 親レコードの削除時に子のレコードも削除
    accepts_nested_attributes_for :images, allow_destroy: true

end
