#Big Goal
##_Motivation countdown site_

###You have a really big, long term goal, and you need some help to stay motivated and keep moving.
* Set your big goal, and what date you want to complete it by
* Each day you check it, it will give you a personalized motivational message to keep you pumped.

###User signs up, and creates a profile
* User is able to set just one Big Goal at a time
	* eg: Save money for a trip, graduate University, prepare to quit job
	* Include the name of the goal, and the date/time it needs to be completed by

###There is a big countdown to when the goal will be finished
* There is a new, personalized motivational message, every day

###Messages are pulled from an array, but you can also add your own messages, and they will be thrown into the mix, just for that user.
* Button to hit you with one more dose of feels

###Button to hit when you complete your goal
* Message when the timer runs out.
* Button to add one more day/week, and a comforting message to follow.
	* Maybe this can only be done once.
	* Once your main goal is complete, you can add a new one.

###Models:
* __admin__
	has\_many :default\_messages

* __user__
	has_one :profile,
	has_many :goals,
	has\_many :custom_messages
	* email												:string

* __profile__
	belongs_to :user
	* name												:string
	* nickname										:string
	* include\_custom\_messages		:boolean

	* user_id											:integer

* __goal__
	belongs\_to :user
	* goal_name										:string
	* deadline										:datetime
	* deadline\_extended					:boolean
	* complete										:boolean

	* user_id											:integer

* __default_message__
	belongs\_to :admin
	* message											:string

	* admin_id										:integer

* __custom_message__
	belongs\_to :user
	* message											:string

	* user_id											:integer

###Controller#actions:
* __profile__
	* Full CRUD

* __goal__
	* Full CRUD
	* Index (List of user's current and past goals, with stats).

* __default_message__
	* Full CRUD
	* Available only to :admin

* __custom_message__
	* Full CRUD
	* Available only to :user

###Views access
* User
	* Mainpage - Goals#show
	* CustomMessage => Full CRUD
* Admin
	* Single Admin access
	* Users#Index
	* DefaultMessage => Full CRUD