Rails.application.routes.draw do
  post '/login'=> 'sessions#create'
  post '/users'=>'users#create'
end
