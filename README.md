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

has_many :lists


## lists テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |
| user-id        | string | null: false |

Association

belongs_to :user

has_many :cards


## cards テーブル

| Column       | Type   | Options     |
| ------------ | ------ | ----------- |
| title        | string | null: false |
| memo        | string | null: false |
| list-id       | string | null: false |

Association

belongs_to :list


## 概要
やるべきこと・やりたいことを整理・見直し、管理するプリケーション

## アプリ名
タスク管理アプリ

## 説明
進行中や未完了のタスクを管理するためのプリケーションです。
シンプルで使いやすいUIで、手軽にタスクの新規作成・編集・削除ができ、
タスクを一覧で閲覧し確認が可能です。

## URL
https://task-manage0922.herokuapp.com/

## 利用方法
WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。

## 目指した課題解決
日々、ビジネスやプライベートにおいて様々なやるべきことを抱え、その数が増えると失念したり、
優先順位が不明確になることがある。
そのようなことがないよう、仕事を頼まれたり、あるいは自ら新しいタスクを課したりした時に
随時タスクを書きとめ、一覧で確認できるアプリを開発しました。
もちろん、随時編集や完了したタスクの削除が可能です。

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
![タスク作成](https://github.com/amiapple/task-app/blob/master/images/スクリーンショット%202020-10-07%2020.39.38.png)
トップ画面から「追加」をクリックすると新規作成画面になります。
