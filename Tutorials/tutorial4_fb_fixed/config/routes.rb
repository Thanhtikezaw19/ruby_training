Rails.application.routes.draw do
   root "sessions#new"

   get '/login', to: 'sessions#new'
   post '/logout', to: 'sessions#logout'
   post 'login', to: 'sessions#usrdata'
   post '/new', to: 'sessions#new'
   get '/hello', to: 'sessions#hello'
   post 'hello', to: 'sessions#logout'
end
