module ApplicationHelper
def gravatar_url(user)
  gravatar_id = Digest::MD5::hexdigest(user.email).downcase
  
end
end
