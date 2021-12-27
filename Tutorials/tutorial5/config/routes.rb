Rails.application.routes.draw do
  root "forms#index"

  get 'upload', to: 'forms#index'
  post 'upload', to: 'forms#upload_data'
  get 'file_info', to: 'forms#file_info'
end
