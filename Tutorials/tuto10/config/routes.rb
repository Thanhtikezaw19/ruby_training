Rails.application.routes.draw do
  
  root "sign_in#index"

  get '/login', to: "sign_in#index"

  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"

  #post  "password_resets/create", to: "password_resets#success"

  get "password/reset/edit", to: "password_resets#edit"
  patch "password/reset/edit", to: "password_resets#update"

end
