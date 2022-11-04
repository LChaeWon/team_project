Rails.application.routes.draw do
		
	


  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
root 'posts#index'
post 'post/:post_id/like' => 'likes#like_toggle'
get 'users/sign_out'
  get 'searches/result'

  resources :room_messages
  resources :rooms
get  'info/index'
	get  'info/mypost'
			get  'info/mylike'
get 'rooms/destroy'
	get 'info/mybuy'
get 'info/myint'
get 'info/mycomment'
get 'info/myinfo'
	



end