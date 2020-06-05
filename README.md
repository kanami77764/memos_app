# README

## Kicchiri Kigen
Kicchiri Kigen(きっちり　期限)は、家にある食材を簡単に管理できるアプリです。

### 🌐 App URL
https://sheltered-tundra-42826.herokuapp.com/

## 💬 アプリ説明
食材や調味料など、すぐ使いきれないモノや少し日持ちするモノ（1ヶ月ほど）を、アプリに入れて簡単に期限を管理します。
<br>これにより、使い切りたいモノを可視化できるので、『忘れていた...』ということをなくします。
<br>特に、冷蔵庫でも、食材棚でも、あまり使わない、見えにくい位置に保存しているモノに最適です。


## 🎨 DEMO
![memoapp説明用１](https://user-images.githubusercontent.com/64050565/83348378-ee67e780-a366-11ea-8933-6b60b35f84cc.png)

## 💬 開発意図
【対象者】
<br>ちゃんと食材を管理したいけど、日々忙しい毎日を送っている方、忘れてしまう方に向けて作成しました。ひとり暮らしの方にもおすすめ！
【なぜ食材管理？】
<br>①自身が一人暮らしなこともあり、あまり使わない調味料はなかなか減らないし、ストックを忘れて買ってしまうことがあった。
<br>②一度に大量に買うので、買ったモノを把握するのが難しい
<br>（アプリ開発当初は、コロナウイルスの影響もあり、頻繁に買い物に行けなかったので）
<br>③仕事帰りなど、『あの食材のストックあったかな？』と思った時にすぐ確認できる。

<br>このアプリで、食材をきちんと使い切りましょう！！


## 📦 実装機能
"Kicchiri Kigen"の機能
<br>*メモ（食材）投稿機能
<br>*投稿したモノを削除、編集できる機能
<br>＊投稿したものはデータとして管理、閲覧できる機能
<br>*期限が近い順に食材の管理ができる機能
<br>*ログイン機能実装

<br>ruby on railsを使用しています [ruby on rails](https://rubyonrails.org/)


## 💬 使っている言語、フレームワーク
*ruby 2.5.1
<br>*Rails 5.0.7.2


## 💬 インストール方法
```
$ git clone https://github.com/kanami77764/memos_app.git
$ cd memos_app
$ bundle install
$ rails db:create
$rals db:migrate
```

## 👀 Author
*kanami66674

## 💬 データベース
### Memo table
| Columm | Type | Option |
|:------:|:----:|:------:|
|food|string|null: false|
|limit_date|date||
|user_id|integer|null: false, foreign_key: true|

#### Association
- belongs_to :user


### User table
| Column | Type | Option |
|:------:|:----:|:------:|
|email|string|null: false ,add_index  unique: ture|
|password|string|null: false|

#### Association
- has_many :foods



##English ver
# README

## Kicchiri Kigen
This is a simple app of memo.

### 🌐 App URL
https://sheltered-tundra-42826.herokuapp.com/

## 💬 Description
You can manage your food items best-before date.
<br>And you can easily register a memo just by entering the characters.
<br>Now you will be rest assured.
<br>
<br>"Kicchiri" means properly and "Kanri" means management.


## 💬 Development purpose
I thought I grasped food items best-before date, and would like to use a food up.
<br>But when execution is difficult by the following point, I have that...
<br>①The point that a great deal of foods are bought by once's shopping by influence of COVIDー19
<br>②The point that the food which isn't frequently used is often left
<br>
<br>This application was made to settle those!



## 📦 Features
*"Kicchiri Kigen" is a simple design.
<br>*Save added data and show your memo into database
<br>*Manage them in order from closest date.
<br>*Login function
<br>
<br>"Kicchiri Kigen" used [ruby on rails](https://rubyonrails.org/)


## 💬 Usage
*ruby 2.5.1
<br>*Rails 5.0.7.2


## 💬 Install
```
$ git clone https://github.com/kanami77764/memos_app.git
$ cd memos_app
$ bundle install
$ rails db:create
$rals db:migrate
```

## 👀 Author
*kanami66674
