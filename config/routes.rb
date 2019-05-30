Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      post '/tracks', to: 'college_tracks#create'
      get '/tracks', to: 'college_tracks#index'
      post '/tasks', to: 'tasks#create'
      get '/dashboard', to: 'users#dashboard'
      get '/current_user', to: "auth#show"
    end
  end
end
