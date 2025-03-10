Rails.application.routes.draw do
  namespace :api do
    namesapce :v1 do
    resources :: Team
    end
  end
end
post '/login'=> 'sessions#create'
post '/users'=>'users#create'
