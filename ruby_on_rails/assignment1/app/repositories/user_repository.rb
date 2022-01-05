class UserRepository
  class << self
    
    def findByEmail(email)
      @user = User.find_by(email: email)
    end
    
    def getAllUsers
      @users = User.all
    end

    def createUser(user)
      @is_user_create = user.save
    end

    def updateUser(user, user_params)
      @is_user_update = user.update(user_params)
    end

    def destroyUser(user)
      user.destroy
    end

    def getUserById(id)
      @user = User.find(id)
    end

  end
end