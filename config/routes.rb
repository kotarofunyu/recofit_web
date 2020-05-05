Rails.application.routes.draw do
    get '/' => "home#top"
    get 'about' => "home#about"

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

    # ユーザーここから
    get '/users/' => 'users#index'
    get '/users/new' => 'users#new'
    post 'users/create' => 'users#create'
    get '/users/:id' => 'users#show'
    get '/users/:id/edit' => 'users#edit'
    patch '/users/:id/update' => 'users#update'

    get 'login' => 'sessions#new'
    post 'login' => 'sessions#create'
    post '/test_login' => 'sessions#test_login'
    delete 'logout' => 'sessions#destroy'

    # API
    namespace :api, format: 'json' do
      resources :training_record
      resources :user
      get 'login' => 'login#show'
      get 'events' => 'training_record#user_event'
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
