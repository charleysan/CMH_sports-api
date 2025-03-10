Rails.application.routes.draw do
  post '/login'=> 'sessions#create'
  post '/users'=>'users#create'

  namespace :api do
    namespace :v1 do
    resources :teams
    end
  end
end
