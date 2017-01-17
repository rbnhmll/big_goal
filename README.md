#Big Goal Motivation Countdown site

##You have a really big, long term goal, and you need some help to stay motivated and keep moving.
	-- Set your big goal, and what date you want to complete it by
	-- Each day you check it, it will give you a personalized motivational message to keep you pumped.

##User signs up, and creates a profile
	User is able to set just one Big Goal at a time
		eg: Save money for a trip, graduate University, prepare to quit job
		Include the name of the goal, and the date/time it needs to be completed by

##There is a big countdown to when the goal will be finished
	There is a new, personalized motivational message, every day

##Messages are pulled from an array, but you can also add your own messages, and they will be thrown into the mix, just for that user.
	-- Button to hit you with one more dose of feels

##Button to hit when you complete your goal
	Message when the timer runs out.
	Button to add one more day/week, and a comforting message to follow.
		Maybe this can only be done once.

##Once your main goal is complete, you can add a new one.

##Models:
	-- User
  	Email
	-- Profile
  	Name (perhaps multiple names that you like to be called/nicknames)
	-- Goal
  	Goal name
  	Goal Date/time
  	Extended?
  	Complete?
	-- Custom Messages
  	Include custom message?

##Controller#actions:
	-- Profile
  	Full CRUD
	-- Goal
  	Full CRUD
  	Index (List of current and past goals, with stats.
	-- Custom Messages
  	Full CRUD