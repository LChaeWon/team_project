Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
root 'posts#index'
post 'post/:post_id/like' => 'likes#like_toggle'
get 'users/sign_out'
end
