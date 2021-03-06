class Post < ApplicationRecord

	belongs_to :user,  optional: true
	has_many :likes, dependent: :destroy
	has_many :liked_users, through: :likes, source: :liked_user
	mount_uploader :image
end
