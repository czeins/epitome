Rails.application.routes.draw do

    root 'users#index'
    get 'users' => 'users#index'
    get 'signup' => 'users#new'
    post "/users" => "users#create"
    get 'users/:id' => 'users#show', as: :user
    get 'users/:id/edit' => 'users#edit', as: :edit_user
    patch 'users/:id' => 'users#update'
    delete 'users/:id' => 'users#destroy'

end