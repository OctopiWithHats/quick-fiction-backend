Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  get '/prompts/index', to: 'prompts#index'
  get '/beginnings/index', to: 'beginnings#index'
  get '/endings/index', to: 'endings#index'
end
