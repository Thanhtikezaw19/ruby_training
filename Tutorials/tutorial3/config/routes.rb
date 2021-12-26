Rails.application.routes.draw do
  # get 'posts/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  get "/articles", to: "articles#index"

  
  post "born_on" => "articles#calculate_age"
  get "/result", to: "articles#result"

  # Defines the root path route ("/")
  # root "articles#index"
end
