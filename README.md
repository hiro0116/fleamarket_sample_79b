# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: true|
|email|string|null: true, unique: true, index: true|
|password|string|null: true|
### association
- has_one :profile, dependent: :destroy
- has_one :credit_card, dependent: :destroy
- has_one :address, dependent: :destory
- has_many :buyer_items,  foreign_key: "buyer_id", class_name: "Item"
- has_many :seller_items, foreign_key: "seller_id", class_name: "Item"

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|given_name|string|null: false|
|family_name_kana|string|null: false|
|given_name_kana|string|null: false|
|birth_date_year|string|null: false|
|birth_date_month|string|null: false|
|birth_date_day|string|null: false|
|user_id|string|null: false, foreign_key: true|
### association
- belongs_to :user

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|given_name|string|null: false|
|family_name_kana|string|null: false|
|given_name_kana|string|null: false|
|postal_code|string|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|null: false|
|phone_number|sgring|unique: true|
|user_id|references|foreign_key: true, null: true|
### association
- belongs_to :user
- belongs_to_active_hash :seller_region

## credit_cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|reference|foreign_key: true, null: false|
|card_id|integer|null: false|
|customer_id|integer|null: false|
### association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|description|text|null: false|
|price|integer|null: false|
|buyer_id|references|foreign_key: true|
|seller_id|references|foreign_key: true, null: false|
|category_id|references|foreign_key: true, null: false|
|brand_id|references|foreign_key: true|
|item_condition_id|references|foreign_key: true, null: false|
|delivery_cost_id|references|foreign_key: true, null: false|
|seller_reigon_id|references|foreign_key: true, null: false|
|perparation_for_shipment_id|references|foreign_key: true, null: false|
|status_id|references|foreign_key: true, null: false|
|deal_ending_day|timestamp||
### association
- has_many :images, dependent: :destroy
- belongs_to :category
- belongs_to :brand
- belongs_to_active_hash :delivery_cost
- belongs_to_active_hash :item_condition
- belongs_to_active_hash :seller_region
- belongs_to_active_hash :preparation_for_shipment
- belongs_to_active_hash :status
- belongs_to :seller, class_name: "User"
- belongs_to :buyer, class_name:"User"

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|references|foreign_key :true, null: false|
|image_url|string|null: false|
### association
- belogs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string|null: false|
### association
- has_many :items

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
### association
- has_many :items

## item_conditionsテーブル(active_hash)
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false|
### association

## delivery_cost_payersテーブル(active_hash)
|Column|Type|Options|
|------|----|-------|
|payer|string|null: false|
### association

## seller_regionsテーブル(active_hash)
|Column|Type|Options|
|------|----|-------|
|prefecture|string|null: false|
### association

## preparation_for_deliveryテーブル(active_hash)
|Column|Type|Options|
|------|----|-------|
|day|string|null: false|
### association

## statusesテーブル(active_hash)
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
### association

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
