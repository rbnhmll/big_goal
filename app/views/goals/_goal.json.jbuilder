json.extract! goal, :id, :goal_name, :deadline, :deadline_extended, :complete, :created_at, :updated_at
json.url goal_url(goal, format: :json)