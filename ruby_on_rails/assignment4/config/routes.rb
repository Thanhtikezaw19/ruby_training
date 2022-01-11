Rails.application.routes.draw do
  #root "users#index"
  root "login#index"

  resources :users do
    resources :posts
  end
  # login logout
  get "/login", to: "login#index"
  post "login", to: "login#login"
  get "logout", to: "login#logout"

  # export import csv
  get "/export_csv", to: "posts#export"
  post "import_posts", to: "posts#import"
  get "posts", to: "posts#index"

  # post mailer
  get "send_posts", to: "posts#send_posts"
end
