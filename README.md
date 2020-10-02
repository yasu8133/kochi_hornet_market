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
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
### Association
- has_many :user_exhibitions through: :exhibitions
- has_many :purchases through: :exhibitions


## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|Postal_code|integer|null: false|
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
|user_id|integer|
|image|string|
|card_number|integer|null: false|
|year|integer|null: false|
|month|integer|null: false|
|security_number|integer|null: false|
### Association
- belongs_to :user


## user_exhibitionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|exhibitions_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- has_many :exhibitions


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|exhibitions_id|integer|null: false, foreign_key: true|
|image|string|null: false|
### Association
- belongs_to :exhibitions


## exhibitionsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|categorys_id|integer|null: false|
|brands_id|integer|null: false|
|shipping_charges|string|null: false|
|shipping_area|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: false|
|goods_ status|string|null: false|
|goods_name|string|null: false|
|goods_ demonstrate|string|null: false|
### Association
- has_many :images
- belongs_to :user_exhibition
- belongs_to :category

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
- belongs_to :brand

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand_id|integer|null: false|
|brand_name|string|null: false|
### Association
- has_many :categorys

