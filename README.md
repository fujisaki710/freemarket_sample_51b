# README

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birthday|date|null: false|
|phone_number|integer|null: false|
|user_image|text||
|postcord|integer||
|prefecture|string||
|city|string||
|adress|string||
|building|string||
|profile_comment|text||


### Association
- has_many :likes
- has_many :items

## itemsテーブル

|Column|Type|Options|
|------|----|-------|
|brand|string||
|item_condition|string|null: false|
|delivery_fee|string|null: false|
|shipping_area|string|null: false|
|shipping_date|string|null: false|
|price|integer|null: false|
|name|string|null: false|
|discription|text|null: false|
|shipping_rule|string|null: false|
|user_id|references|null: false|

### Association
- has_one :like
- has_many :images
- has_many :comments
- has_many :items_categories
- has_many : categories, through: :items_categories
- belongs_to :brand
- belongs_to :user


## items_categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|item_id|references|null: false, foreign_key: true|
|category_id|references|null: false, foreign_key: true|

### Association
- belongs_to :item
- belongs_to :category


## categoriesテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|index: true|

### Association
- has_many :items_categories
- has_many :items, through: :items_categories
