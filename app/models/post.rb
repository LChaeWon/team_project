class Post < ApplicationRecord
	
	validates_presence_of :title, :content, :user_id
searchable do
  text :title
end

	belongs_to :user, optional: true
	has_many :likes, dependent: :destroy
	has_many :liked_users, through: :likes, source: :liked_user
	


end
