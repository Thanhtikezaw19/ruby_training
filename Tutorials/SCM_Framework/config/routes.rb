Rails.application.routes.draw do
  root "login#index"

  #login page
  get "/login", to: "login#index"
  post "login", to: "login#login"
  get "logout", to: "login#logout"

  resources :users do
    resources :posts
  end
end
