Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :beginnings
      resources :endings
      resources :prompts
      resources :stories
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/prompts/index', to: 'prompts#index'
      get '/beginnings/index', to: 'beginnings#index'
      get '/endings/index', to: 'endings#index'
      get '/stories', to: 'stories#index'
    end
  end
end
