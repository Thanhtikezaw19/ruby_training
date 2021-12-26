Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    root "forms#index"

    get 'upload' => 'forms#index'
    post 'upload' => 'forms#updata'
    get 'file_info' => 'forms#file_info'
end
