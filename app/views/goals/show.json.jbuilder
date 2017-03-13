json.partial! "goals/goal", goal: @goal

json.name @current_user.profile.name
json.nickname @current_user.profile.nickname