Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
  post "born_on", to: "articles#calculate_age"
  get "/result", to: "articles#result"
end
