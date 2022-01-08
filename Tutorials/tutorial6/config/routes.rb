Rails.application.routes.draw do
  
  root "forms#index"

  get "/forms", to: "forms#index"
  post "forms" => "forms#save_img"

  get "show_img", to: "forms#show"


end
