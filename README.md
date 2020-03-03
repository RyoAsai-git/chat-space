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

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user




## messageテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|
|body|text|null: false|
|image|string||

### Association
- belongs_to :user
- belongs_to :group
- validates :body,presence: true, unless: 'image.present?'




## userテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|text|null: false, index: true|
|email|text|null: false,|

### Association
has_many :messages
has_many :group_users
has_many :gruops, through: :groups_users




## groupテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false|

### Association
has_many :messages:
has_many :group_users
has_many :users, through: :groups_users

