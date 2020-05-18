# README

#Kicchiri Kigen
This is an simple app of memo.

#Description
You can manage your food items best-before date.
And you can easily register a memo just by entering the characters.
Now you will be rest assured.

"Kicchiri" means properly and "Kanri" means management.


＃DEMO
![Demo](https://i.gyazo.com/0337e3d1a9714194dcf51f21489300d7.mp4)

＃Features
*"Kicchiri Kigen" is a simple design.
*Save added data and show your memo into database
*Manage them in order from closest date.
*Login function
#"Kicchiri Kigen" used [ruby on rails](https://rubyonrails.org/)


＃Requirement
*ruby 2.5.1
*Rails 5.0.7.2


#instal
```
$ git clone https://github.com/kanami77764/memos_app.git
$ cd memos_app
$ bundle install
$ rails db:create
$rals db:migrate
```

#Author
*kanami66674

＃DataBase
## Memo table
| Columm | Type | Option |
|:------:|:----:|:------:|
|food|string|null: false|
|limit_date|date||
|user_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user


## User table
| Column | Type | Option |
|:------:|:----:|:------:|
|email|string|null: false ,add_index  unique: ture|
|password|string|null: false|

### Association
- has_many :foods

