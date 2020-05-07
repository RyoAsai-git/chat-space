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
|user|references|foreign_key: true|
|group|references|foreign_key: true|
|body|text||
|image|string||

### Association
- belongs_to :user
- belongs_to :group
- validates :body,presence: true, unless: 'image.present?'




## userテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, index: true|
|email|text|null: false,|

### Association
has_many :messages
has_many :group_users
has_many :gruops, through: :groups_users




## groupテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|

### Association
has_many :messages:
has_many :group_users
has_many :users, through: :groups_users


### 詳細

TechCampカリキュラムで作成したチャットアプリケーションです。
http://52.69.253.231/

## 主な機能
・ユーザーの登録、ログイン機能<br>
・ユーザーによるチャットグループ作成機能、編集機能<br>
・メッセージ、画像を含むチャットメッセージ送信機能<br>

## フロントエンド
・Haml<br>
・sass<br>
・JQuery<br>

## サーバーサイド
・Ruby 2.5.1<br>
・Ruby on Rails 5.0.7.2<br>
・MySQL 5.6<br>

## インフラ
・AWS<br>
  ・EC2<br>
  ・S3<br>
## テスト
・RSpec<br>
　・単体テスト<br>
　・コントローラーテスト<br>
