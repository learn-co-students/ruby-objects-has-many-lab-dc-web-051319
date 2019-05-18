require 'pry'

class Author
  attr_accessor :posts, :post, :name, :title

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @posts = []
  end

  def self.all
    @@all
  end

  def add_post(title)
    title.author = self
    @posts << title
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
  end

  def self.post_count
    Post.all.count
  end

end
