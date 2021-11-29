json.extract! chat, :id, :user_id, :posts_id, :message, :created_at, :updated_at
json.url chat_url(chat, format: :json)
