json.extract! profile, :id, :name, :nickname, :include_custom_messages, :created_at, :updated_at
json.url profile_url(profile, format: :json)