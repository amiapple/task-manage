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
## users テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |

Association

- has_many :lists


## lists テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |
| user-id        | string | null: false |

Association

- belongs_to :user
- has_many :cards


## cards テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |
| memo        | text | null: false |
| list-id       | string | null: false |

Association

- belongs_to :list


## 概要
やるべきこと・やりたいことを整理・見直し、管理するプリケーション

## アプリ名
タスク管理アプリ

## URL
https://task-manage0922.herokuapp.com/

## 利用方法
WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。

## 目指した課題解決
日々多くのタスクを抱え、期限の近いもの、頼まれたものから漫然とこなし、後から振り返ると、
本当にすべきこと、重要なことを後回しにしてしまい、取り組めていないことに気づいた経験がある。
そんな課題を解決するため、単にタスクを書き出すだけでなく、やるべきこと、やりたいことについて軸を定め、
軸に則って項目を振り分け、管理する必要があると考えた。
また、アプリに向き合い軸を考え、項目を整理する過程で自分は何をすべきか？がクリアになると実感した。
アプリなら、紙に書き出すより加筆修正や削除も簡単で、見易いものが作成できる。
本アプリでは「リスト」で軸を設定し、リストの中に「カード」としてやりたいこと等タスクを記入する。

## 要件
### タスク一覧
ユーザーは一覧ですぐ着手すべきこと、やらなくていいことを考えることができます

### タスク新規作成
タスク一覧の「追加」ボタンよりタスクの新規作成ができます
特に文字種の制限はありません

### タスク削除
削除ボタンを押すと、即時削除が反映されます
一度削除すると復旧できません

### タスク編集
タスクの横の「編集」よりタスクの編集ができます
特に文字種の制限はありません
編集ボタンを押すと、過去入力した内容がそのまま現れて編集可能になります

### 実装した機能について
#### タスク一覧表示
トップ画面には、これまでに作成したタスクが全て一覧で表示されます。
紙に書き留めるよりも簡単に、今抱えているタスクを確認できます。

#### タスク新規作成
トップ画面から「追加」をクリックすると新規作成画面になります。
