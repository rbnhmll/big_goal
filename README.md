#Big Goal Motivation Countdown site

##You have a really big, long term goal, and you need some help to stay motivated and keep moving.
* Set your big goal, and what date you want to complete it by
* Each day you check it, it will give you a personalized motivational message to keep you pumped.

##User signs up, and creates a profile
* User is able to set just one Big Goal at a time
	* eg: Save money for a trip, graduate University, prepare to quit job
	* Include the name of the goal, and the date/time it needs to be completed by

##There is a big countdown to when the goal will be finished
* There is a new, personalized motivational message, every day

##Messages are pulled from an array, but you can also add your own messages, and they will be thrown into the mix, just for that user.
* Button to hit you with one more dose of feels

##Button to hit when you complete your goal
* Message when the timer runs out.
* Button to add one more day/week, and a comforting message to follow.
	* Maybe this can only be done once.
	* Once your main goal is complete, you can add a new one.

##Models:
* admin
	has\_many :default\_messages

* user
	has_one :profile
	has_many :goals
	has\_many :custom_messages
	* email

* profile
	* name (perhaps multiple names that you like to be called/nicknames)

* goal
	belongs\_to :user
	* goal_name
	* deadline
	* deadline\_extended?
	* complete?

* default_message
	* belongs\_to :admin
	* message

* custom_message
	* belongs\_to :user
	* message
	* include\_custom\_messages?

##Controller#actions:
* profile
	* Full CRUD

* goal
	* Full CRUD
	* Index (List of current and past goals, with stats).

* custom_message
	* Full CRUD