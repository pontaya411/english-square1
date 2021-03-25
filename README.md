# README

# English Square -英語を、味わおう-

# このアプリの投稿で英語はどんな言語か、それを学ぶ興味深さを知ることができ、継続的な英語学習へのきっかけになります

## users テーブル

| Column     | Type   | Options  |
| ---------- | ------ | -------- |
| email      | string | NOT NULL |
| password   | string | NOT NULL |
| name       | string | NOT NULL |
| profile    | text   | NOT NULL | 

### association
has_many :englishtypes
has_many :comments


## comments テーブル

| Column    | Type      | Options  
| --------- | --------- | -------- 
| text      | text      | NOT NULL 
| user      | reference |
| englishtype | reference |

### association
belongs_to :user
belongs_to :englishtype

## englishtypeテーブル

| Column     | Type                | Options  |
| ---------- | ------------------- | -------- |
| title      | string              | NOT NULL |
| english_note | text                | NOT NULL |
| image      | #ActiveStorageで実装 |
| user       | reference           |

belongs_to :user
has_many :comments