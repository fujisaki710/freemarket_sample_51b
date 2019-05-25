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
|profile_comment||text||


### Association
- has_many :likes
- has_many :items