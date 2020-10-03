# market DB 設計

## userテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|family_name|string|null: false|
|last_name|string|null: false|
|password|string|null: false|
|kana_family_name|string|null: false|
|kana_last_name|string|null: false|
|birth|date|null: false|
### Association
- has_many :exhibitions
- has_one :address
- has_one :payment


## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|postal_code|string|null: false|
|prefectures|string|null: false|
|municipalities|string|null: false|
|address|string|null: false|
|building|string|null: false|
|phone_number|string|
### Association
- belongs_to :user


## paymentテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|
|card_id|string|
### Association
- belongs_to :user


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|exhibitions_id|integer|null: false, foreign_key: true|
|image|string|null: false|
### Association
- belongs_to :exhibition


## exhibitionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
|shipping_charges|string|null: false|
|shipping_area|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: false|
|goods_status|string|null: false|
|goods_name|string|null: false|
|goods_demonstrate|string|null: false|
### Association
- has_many :images
- belongs_to :user
- belongs_to :category
- belongs_to :brand
- has_one :purchase

## purchasesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|exhibitions_id|references|null: false, foreign_key: true|
### Association
- belongs_to :exhibition

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|path|integer|null: false|
|item|string|null: false|
### Association
- has_many :exhibitions

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_name|string|null: false|
### Association
- has_many :exhibitions

