class Exhibition < ApplicationRecord
  
  # バリデーション設定
  validates :shipping_charges, presence: true
  validates :shipping_area, presence: true
  validates :shipping_date, presence: true
  validates :goods_status, presence: true
  validates :goods_name, presence: true
  validates :goods_demonstrate, presence: true

  validates :price, presence: true,numericality: {
    greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999,
    message: "¥300〜¥9999999の間で入力してください"
  }
  # アソシエーションを組むこと
  # accepts_nested_attributes_for :item_images, allow_destroy: true
  # accepts_nested_attributes_for :item_images
  # validate  :image


  extend ActiveHash::Associations::ActiveRecordExtensions
    has_many :images
    # DB実装したら記述起こす
    # belongs_to :user
    # belongs_to :category
    # belongs_to :brand
    has_one :purchase

    belongs_to_active_hash :prefecture
    # belongs_to_active_hash :shippingcharges
    # belongs_to_active_hash :shippingdate

    # 親レコードの削除時に子のレコードも削除
    accepts_nested_attributes_for :images, allow_destroy: true

    # こちらで短いレコードは記載をして、バリデーションを当てるようにする。県は長いのでそのまま
    enum shipping_charges: {
      "送料込み（出品者負担）": 0,
      "着払い（購入者負担）": 1
    }

    enum shipping_date: {
      "1~2日で発送": 1,
      "2~3日で発送": 2,
      "4~7日で発送": 3
    }

    enum goods_status: {
      "新品、未使用": 1,
      "未使用に近い": 2,
      "目立った傷や汚れなし": 3,
      "やや傷や汚れあり": 4,
      "傷や汚れあり": 5,
      "全体的に状態が悪い": 6
    }

  

end

# class Item < ApplicationRecord
#   has_many :images, dependent: :destroy
#   accepts_nested_attributes_for :images, allow_destroy: true
# end
