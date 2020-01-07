Rails.application.routes.draw do

  get '/' => "home#top"

  # 記録ここから
  get 'records' => 'training_record#index'
  post 'training_record/create' => 'training_record#create'
  get 'training_record/edit'
  get '/records/event/:name' => 'training_record#event'
  get '/records/:id' => 'training_record#show'
  delete '/records/:id' => 'training_record#destroy'
  get 'sessions/new'

  # 種目名登録ここから
  post 'menu_register/create' => 'training_record#register'

  # ユーザーここから
  get '/signup' => "users#new"
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
