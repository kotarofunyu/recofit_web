Rails.application.routes.draw do
  get 'posts/index'
  get '/' => "home#top"
  get '/signup' => "users#new"
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
