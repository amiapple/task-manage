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
WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。

## 目指した課題解決
日々多くのタスクを抱え、期限の近いものや頼まれたものから漫然とこなし、後から振り返ると<br>
本当にすべきこと、重要なことを後回しにしてしまい、取り組めていないことに気づいた経験がありました。<br>
そんな課題を解決するため、単にタスクを書き出すだけでなく、やるべきこと、やりたいことについて軸を定め、<br>
軸に則って項目を振り分け、管理する必要があると考えました。<br>
また、アプリに向き合い軸を考え、項目を整理する過程で自分は何をすべきか？逆にやらなくて良いことがクリアになります。<br>
アプリなら紙に書き出すより加筆修正や削除も簡単で、見易いものが作成でき、見返すことができます。<br>
本アプリでは「リスト」で軸を設定し、リストの中に「カード」としてやりたいこと等タスクを記入します。<br>
カードはタイトルとメモが記入でき、メモ欄に詳細を自由に記述できます。

## 要件
### カード・タスク一覧表示
ユーザーは一覧ですぐ着手すべきこと、やらなくていいことを考えることができます

### リスト新規作成
トップページの右上「リストを作成」よりリストの新規作成ができます
特に文字種の制限はありません

### リスト削除
リスト名横のゴミ箱アイコンからリストを削除できます

### リスト編集
リスト名横のペンアイコンからリストの編集ができます

### カード新規作成
リスト名下の「カードを追加」よりカードの新規作成ができます

### カード削除
カード名をクリックし、カード情報詳細画面より「削除する」から削除できます。

### カード編集
カード名をクリックし、カード情報詳細画面より「編集する」から編集できます。<br>
タイトルとメモを記入し、「更新する」をクリックして編集完了です。

## 実装した機能について
#### タスク一覧表示（トップページ）
トップ画面には、これまでに作成したタスクが全て一覧で表示されます。<br>
![2020-10-26 20.18.45.png](https://github.com/amiapple/task-manage/blob/master/スクリーンショット%202020-10-26%2020.18.45.png)

#### タスク新規作成
トップ画面から「追加」をクリックすると新規作成画面になります。
