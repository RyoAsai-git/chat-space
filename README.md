
### chat-space

![3bffeab7a41bd2f0d6fe6408dcf32a0f (1)](https://user-images.githubusercontent.com/61679701/81254395-eb2e5400-9065-11ea-9045-2e3cbc7573cc.gif)

![b3294be29d3c10fac1939f85fd9591c6](https://user-images.githubusercontent.com/61679701/81254538-61cb5180-9066-11ea-94b0-49754b0cd820.gif)


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
