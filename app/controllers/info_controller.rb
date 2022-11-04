class InfoController < ApplicationController
def index
  end
	
	
	
def mypost
	@my_posts = Post.where(user_id: current_user.id)
end
	
def mybuy
end
	
def myint
	@my_inter = current_user.liked_posts
end
	
def mycommet
end
	
	
	
def myinfo
end

	
	
	
	
end
