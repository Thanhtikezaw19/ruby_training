Rails.application.routes.draw do
  #root "users#index"
  root "login#index"
   

  resources :users do
    resources :posts
  end
  
  get '/login', to: 'login#index'
  post 'login', to: "login#login"
  get 'logout', to: "login#logout"

end
