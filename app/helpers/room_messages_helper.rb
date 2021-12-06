module RoomMessagesHelper
	def as_json(options)
  super(options).merge(user_avatar_url: user.gravatar_url)
end
end
