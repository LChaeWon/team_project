class InfoController < ApplicationController
def index
  end
	
	
	
def mypost
	@my_posts = Post.where(user_id: current_user.id)
end
	

end
