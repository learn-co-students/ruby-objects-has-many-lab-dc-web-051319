require_relative 'post.rb'

class Author
    attr_reader :name, :posts
    
    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        self.posts << post
        post.author = self
    end

    def add_post_by_title(name)
        new_post = Post.new(name)
        new_post.author = self
        @posts << new_post
    end

    def self.post_count
        Post.posts.length
    end


end