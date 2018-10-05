# README

# 簡単ブログ

## 概要
シンプルにタイトルと記事内容を投稿することに特化したブログサービス
お気に入りとコメントを入れることができます。

## コンセプト
シンプルなブログ

## バージョン
Ruby 2.5.1
Rails 5.2.1

## 機能一覧
- [ ] ログイン機能
- [ ] ユーザー登録機能
  - [ ] メールアドレス、名前、パスワードは必須
- [ ] パスワード再設定機能
- [ ] ブログ一覧表示機能
  - [ ] コメント数を表示
  - [ ] お気に入り数を表示
- [ ] ブログ投稿機能
  - [ ] タイトルと記事内容は必須
- [ ] ブログ編集機能
- [ ] ブログ削除機能
  - [ ] ブログ編集とブログ削除は投稿者のみ実行可能
- [ ] ブログお気に入り機能
  - [ ] ブログのお気に入りについては1つのブログに対して1人1回しかできない
  - [ ] 自分自身のブログにはお気に入りできない
- [ ] コメント投稿機能
- [ ] コメント削除機能
- [ ] コメント編集機能
  - [ ] コメント編集とコメント削除はコメントした本人のみ可能
- [ ] コメント機能とお気に入り機能についてはページ遷移なしで実行できる

## カタログ設計
https://docs.google.com/a/diveintocode.jp/spreadsheets/d/e/2PACX-1vTxGgDqcFi7os0i3QAaQlG19hjAo8K3lMthr8nnSGP1TcAdSA2I1wchkTgKM8GKh4Ws9VfgzNVl-sRy/pubhtml

## テーブル定義
https://docs.google.com/a/diveintocode.jp/spreadsheets/d/e/2PACX-1vQTwxfxEoE4hCwhQtOi7HeeiZkKvbh4oKuMYdvw9Ev24AzzC8W8O2aXSRry0vVwLkUKusIVSmHTDegC/pubhtml

## 画面遷移図
https://docs.google.com/a/diveintocode.jp/spreadsheets/d/e/2PACX-1vRJbrky6f6C4HGnyuuwEXg7E_wyd8HFTlIghuLrEaxVv4R9b-QDhvrnX5I3HZikow6e86GDUC0kboLH/pubhtml

## 画面ワイヤーフレーム
https://docs.google.com/a/diveintocode.jp/spreadsheets/d/e/2PACX-1vQJnEowPtDPD2jusOZ6A69Ot8_FD1PM8sh2VGhMwbZ0yKbyt9but9x5WWI2EgNHp9gy22mBC8IO9kwf/pubhtml

## 使用予定Gem
* carrierwave
* mini_magick
* devise
