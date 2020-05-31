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


## 🎨 DEMO
![memoapp説明用１](https://user-images.githubusercontent.com/64050565/83348378-ee67e780-a366-11ea-8933-6b60b35f84cc.png)

## 💬 Development purpose
I thought I grasped food items best-before date, and would like to use a food up.
<br>But when execution is difficult by the following point, I have that...
<br>①The point that a great deal of foods are bought by once's shopping by influence of coronavirus
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

## 💬 DataBase
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

