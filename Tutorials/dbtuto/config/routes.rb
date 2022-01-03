Rails.application.routes.draw do
  get 'site/home'
  resources :posts

  root "posts#index"
end
