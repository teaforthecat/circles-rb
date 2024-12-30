json.extract! message, :id, :content, :content_type, :created_at, :updated_at
json.url message_url(message, format: :json)
