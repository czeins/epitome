Rails.application.routes.draw do

    root 'users#new'

    resources :users, except: [:new] do
      resources :resumes
    end

    # get '/users' => 'users#index' #Will bring you to an index of every user registered
    get '/signup' => 'users#new'
    # post "/users" => "users#create"
    # get 'users/:id' => 'users#show', as: :user
    # get 'users/:id/edit' => 'users#edit', as: :edit_user
    # put 'users/:id' => 'users#update'
    # delete 'users/:id' => 'users#destroy'

    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    # get 'users/:user_id/resumes/' => 'resumes#index'
    # get 'users/:user_id/resumes/new' => 'resumes#new'
    # post 'users/:user_id/resumes/create' => 'resumes#create'
    # get 'users/:user_id/resumes/:id' => 'resumes#show'
    # get 'users/:user_id/resumes/:id/edit' => 'resumes#edit'
    # put 'resumes/:id' => 'resumes#update'
    # delete 'resumes/:id' => 'resumes#destroy'

    ## Rando pages
    get '/welcome' => 'static#welcome'

end