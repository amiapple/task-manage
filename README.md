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
タスク・やるべきこと・やりたいことを整理・見直し、管理するプリケーション

## アプリ名
task manage app

## URL
https://task-manage0922.herokuapp.com/

## 利用方法
WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。<br>
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。

## 目指した課題解決
日々多くのタスクを抱え、期限の近いものや頼まれたものから漫然とこなし、後から振り返ると<br>
本当にすべきこと、重要なことに取り組めていないと気づくことがありました。<br>
そんな課題を解決するため、単にタスクを書き出すだけでなく、やるべきこと、やりたいことの軸を定め、<br>
軸に則って項目を振り分け、管理する必要があると考えました。<br>
また、アプリに向き合い軸を考えて、項目を整理する過程で自分は何をすべきか？やるべきことの優先順位と、逆にやらなくて良いことがクリアになります。<br>
すると、例えば資格試験に向けて時間を取り、参加しなくても良い行事やイベントを断るといった行動をとることができます。
アプリなら紙に書くよりも加筆修正や削除も簡単で、見易いものが作成でき、常に見返すことができます。<br>
本アプリでは「リスト」で軸を設定し、リストの中に「カード」としてやりたいこと等タスクを記入します。<br>
カードはタイトルとメモが記入でき、メモ欄にタスクの詳細を自由に記述できます。

## 要件
### ユーザー新規登録
アプリを利用するには、はじめにユーザー登録が必要です。<br>
名前、メールアドレス、パスワードを記入します。全て入力必須であり、パスワードは6文字以上のものを設定する必要があります。<br>

### リスト新規作成
トップページ右上「リストを作成」よりリストの新規作成ができます。
特に文字種の制限はありません。

### リスト削除
リスト名横のゴミ箱アイコンからリストを削除できます。<br>
「削除しますか？」と確認のポップアップが表示されるので「はい」を選択すると削除されます。

### リスト編集
リスト名横のペンアイコンからリストの編集ができます。<br>
編集画面に移行するので、リスト名を記入し「編集する」を選択するとトップページに移行します。

### カード新規作成
リスト下部の「カードを追加」よりカードの新規作成ができます。<br>
新規作成画面に移行し、タイトルとメモを記入できます。<br>
タイトルは25字まで、メモは1000字までの字数制限があり、いずれも入力必須です。

### カード削除
カード名をクリックし、カード情報詳細画面より「削除する」から削除できます。

### カード編集
カード名をクリックし、カード情報詳細画面より「編集する」から編集できます。<br>
タイトルとメモを記入し、「更新する」をクリックして編集完了です。

## 実装した機能について
### リスト・カード一覧表示（トップページ）
トップページには、これまでに作成したリストとカードが一覧で表示されます。<br>
![2020-10-26 20.18.45.png](https://github.com/amiapple/task-manage/blob/master/スクリーンショット%202020-10-26%2020.18.45.png)

### ユーザー新規登録
はじめにユーザー登録が必要です。<br>
登録が完了するとトップページに移行し、アプリが利用できます。<br>
![2020-10-26 20.18.45.png](https://github.com/amiapple/task-manage/blob/master/スクリーンショット%202020-10-26%2020.18.45.png)

### カード新規作成・編集
リスト作成後、「カードを追加」からカードを新規作成できます。<br>
タイトルにタスクの名前、メモにタスクの詳細（内容や期限等）を自由に記述できます。<br>
![2020-10-28 3.29.46.png](https://github.com/amiapple/task-manage/blob/master/スクリーンショット%202020-10-28%203.29.46.png)
