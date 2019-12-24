Rails.application.routes.draw do
  get '/' => "home#top"
  # 記録ここから
  # get 'post' => 'training_record#new'
  get 'records' => 'training_record#index'
  post 'training_record/create' => 'training_record#create'
  get 'training_record/edit'
  get 'training_record/destroy'
  get 'sessions/new'
  get 'posts/index'
  # ユーザーここから
  get '/signup' => "users#new"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
