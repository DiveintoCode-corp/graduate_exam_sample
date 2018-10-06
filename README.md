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
https://docs.google.com/spreadsheets/d/e/2PACX-1vQRNOY03ypjIxTthuBAq_pKatH-w-vyCbr_It0KMQrlU1ReItaus1DUbHTiFMKFv4aEKWN6vssLElaC/pubhtml

## テーブル定義
https://docs.google.com/spreadsheets/d/e/2PACX-1vTQJC1TV38hLwTivc5LreMtPzjxj9OpqrFgVkYysZXHb1FttKg2MSbUP6r-U8-7noU52UHzQRxsY_SE/pubhtml

## 画面遷移図
https://docs.google.com/spreadsheets/d/e/2PACX-1vTLVdnF81Q_O93ebHGBfckJJhjXO4EKeHcYtX1mRxl3bk0ILjeOdI_pwmlmUeOI_aUBezdSoi_YJe71/pubhtml

## 画面ワイヤーフレーム
https://docs.google.com/spreadsheets/d/e/2PACX-1vQW9UJIBgpQ7Ijd9oAv-vZYcxsO0X8r9bM9zWLJ4IOYV9aLLgRwe6T24Ae9gjOF-8gdesbHqiBhHtRi/pubhtml

## 使用予定Gem
* carrierwave
* mini_magick
* devise
