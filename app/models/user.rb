class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts,  dependent: :destroy
	
  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post
	
	def is_like? (post)
		Like.find_by(user_id: self.id, post_id: post.id).present?
	end
	
	def gravatar_url
  gravatar_id = Digest::MD5::hexdigest(email).downcase
  "https://gravatar.com/avatar/#{gravatar_id}.png"
end

	
end
