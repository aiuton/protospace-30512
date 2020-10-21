#テーブル設計

＃＃users table

| Column    |  Type  | Options |
| --------- | ------ | ------- |
| email     |string  | not null|
| password  |string  | not null|
| name      |string  | not null|
| profile   |text    | not null|
| occupation|text    | not null|
| position  |text    | not null|

＃＃＃Association
- has_many :comments
- has_many :prototype

##comments table

| Column    |  Type    | Options                               |
| --------- | -------  | -----------------------------------   |
| text      |string    | not null                              |
| user      |references| null: false, foreign_key: true        |
| prototype |references| null: false, foreign_key: true        |

＃＃＃Association
- belong_to :users
- belong_to :prototype

##prototype table

| Column    |  Type         | Options                          |
| --------- | -------       | ----------------------------     |
| title     | string        | not null                         |
| catch_copy| text          | not null                         |
| concept   | text          | not null                         | 
| image     | ActiveStorage |                                  |
| user      |references     | null: false, foreign_key: true   |

＃＃＃Association
- belong_to :users
- has_many  :comments
 
