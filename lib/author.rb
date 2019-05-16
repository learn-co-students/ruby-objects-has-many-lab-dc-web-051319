class Author
    attr_accessor :name

    @@authors = []

    def initialize(name)
        @name = name
        @posts = []
        @@authors << self
    end

    def posts
        @posts
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def add_post_by_title(post_title)
        post = Post.new(post_title)
        post.author = self
        posts << post
    end

    def self.post_count
        @@authors.inject(0) do |sum, author|
            sum += author.posts.length
        end
    end
end