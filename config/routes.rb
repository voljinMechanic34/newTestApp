Rails.application.routes.draw do

root 'posts#index'
get 'about' => 'pages#about'

get '/getForm' => 'posts#getForm'
post '/postForm' => 'posts#postForm'
resources :posts

end
