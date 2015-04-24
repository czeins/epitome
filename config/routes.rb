Rails.application.routes.draw do

  get 'static/index'

    root 'users#new'

    #Will bring you to an index of every user registered
    get '/users' => 'users#index'

    get '/signup' => 'users#new'
    post "/users" => "users#create"
    get 'users/:id' => 'users#show', as: :user
    get 'users/:id/edit' => 'users#edit', as: :edit_user
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'


end