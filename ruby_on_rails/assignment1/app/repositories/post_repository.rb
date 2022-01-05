class PostRepository
  class << self

    def createPost(user, post)
      @is_save_post = user.posts.create(post)
    end

    def updatePost(post, post_params)
      @is_post_update = post.update(post_params)
    end

    def destroyPost(post)
      post.destroy
    end


  end
end