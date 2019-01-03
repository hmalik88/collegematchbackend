Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :colleges
      post '/login', to: 'auth#create'
      get '/dashboard', to: 'users#dashboard'
      get '/current_user', to: "auth#show"
    end
  end
end
