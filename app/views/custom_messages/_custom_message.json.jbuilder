json.extract! custom_message, :id, :message, :created_at, :updated_at
json.url custom_message_url(custom_message, format: :json)