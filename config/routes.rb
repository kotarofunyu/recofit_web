Rails.application.routes.draw do
  get '/' => 'home#top'
  get 'about' => 'home#about'

  get '/records/event/:name' => 'event#index'

  get '/records/events/' => 'user_event#index'
  get '/users/events/' => 'user_event#show'

  # 記録ここから
  get 'records' => 'training_record#index'
  post 'training_record/create' => 'training_record#create'
  get '/records/:id' => 'training_record#show'
  get '/records/:id/edit' => 'training_record#edit'
  patch '/records/:id/update' => 'training_record#update'
  delete '/records/:id' => 'training_record#destroy'
  get 'sessions/new'

  # 種目名登録ここから
  post 'menu_register/create' => 'training_record#register'

  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post '/test_login' => 'sessions#test_login'
  delete 'logout' => 'sessions#destroy'

  # API
  namespace :api, format: 'json' do
    # post '/traning_record/create/:api_token' => 'training_record#create'
    resources :training_record, only: %i[index show create]
    resources :user, param: :api_token, only: %i[show create]
    resources :user_record, param: :api_token, only: :show
    resources :user_event, param: :api_token, only: :show
    get 'login' => 'login#show'
    get 'events' => 'training_record#user_event'
  end
end
