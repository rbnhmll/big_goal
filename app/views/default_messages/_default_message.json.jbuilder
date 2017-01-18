json.extract! default_message, :id, :message, :created_at, :updated_at
json.url default_message_url(default_message, format: :json)