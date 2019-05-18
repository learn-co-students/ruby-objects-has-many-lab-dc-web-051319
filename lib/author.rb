class Author

attr_accessor :name, :posts#has many posts
#@@all = []
@@post_count = 0

  def initialize(name)
    @name = name
    @posts = [] #has many posts
  end

  def add_post(title)
    @posts << title
    title.author = self #Don't forget to put attr_accessor(author) on the post class
    @@post_count += 1
    #binding.pry
  end

#  def posts
#    @posts
#  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count +=1
  end

  def self.post_count
    @@post_count
  end

  def posts
    @posts
  end
#binding.pry

end
# initialize with a name
