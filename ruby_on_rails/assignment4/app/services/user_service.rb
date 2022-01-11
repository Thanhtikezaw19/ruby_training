class UserService
  class << self
    def findByEmail(email)
      @user = UserRepository.findByEmail(email)
    end

    def getAllUsers
      @users = UserRepository.getAllUsers
    end

    def createUser(user)
      @is_user_create = UserRepository.createUser(user)
    end

    def updateUser(user, user_params)
      @is_user_update = UserRepository.updateUser(user, user_params)
    end

    def destroyUser(user)
      UserRepository.destroyUser(user)
    end

    def getUserById(id)
      @user = UserRepository.getUserById(id)
    end
  end
end
