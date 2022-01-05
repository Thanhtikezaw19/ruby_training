json.extract! user, :id, :name, :email, :password, :super_user_flag, :phone, :address, :birthday, :created_at, :updated_at
json.url user_url(user, format: :json)
