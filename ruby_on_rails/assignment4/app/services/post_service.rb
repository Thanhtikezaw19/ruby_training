class PostService
  class << self
    def createPost(user, post)
      @is_save_post = PostRepository.createPost(user, post)
    end

    def updatePost(post, post_params)
      @is_post_update = PostRepository.updatePost(post, post_params)
    end

    def destroyPost(post)
      PostRepository.destroyPost(post)
    end
  end
end
