Rails.application.routes.draw do
  # namespace :api do
  #   namespace :v1 do
  #     # resources :users, only: [:create]
  #     # resources :beginnings
  #     # resources :endings
  #     # resources :prompts
  #     # resources :stories
  #     post '/users/create'
  #     post '/users/sign_in', to: 'auth#login'
  #     post '/users/sign_out', to: 'auth#sign_out'
  #     get '/users/profile', to: 'users#profile'
  #     get '/prompts/index', to: 'prompts#index'
  #     get '/beginnings/index', to: 'beginnings#index'
  #     get '/endings/index', to: 'endings#index'
  #     get '/stories', to: 'stories#index'
  #   end
  # end
  get '/stories', to: 'stories#index'
  post '/stories', to: 'stories#create'
  get '/prompts', to: 'prompts#index'
  get '/beginnings', to: 'beginnings#index'
  get '/endings', to: 'endings#index'
  #get 'stories/:id/edit', to: 'stories#edit', as: :edit_story  
  patch 'stories/:id', to: 'stories#update'

end
