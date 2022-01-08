Rails.application.routes.draw do
  get "/pages", to: "pages#qr_code_generator"

  post "qr_code_download", to: "pages#qr_code_download"

  controller :pages do
    get :qr_code_generator
    get :qr_code_download
  end
end
