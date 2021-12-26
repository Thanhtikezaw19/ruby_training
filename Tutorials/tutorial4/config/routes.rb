Rails.application.routes.draw do
   root "sessions#new"

   get '/login' => 'sessions#new'

   post '/logout' => 'sessions#logout'

   post 'login' => 'sessions#usrdata'
   post '/new' => 'sessions#new'
   get '/hello' => 'sessions#hello'
   post 'hello' => 'sessions#logout'
end
