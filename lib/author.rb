class Author

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end


  def posts
    #has many songs.  Going to find all of the songs that belong to an artist.
    Post.all.select do |post|
      post.author == self
    end
  end


  def add_post(post)
    # passing the instance obect of the post as the variable song, so then I can see author from post and then setting author to = self (instance of Artist)
    post.author = self

  end

  def add_post_by_title(title)
    #take in an argument of a new post title, creates a new post instance, and then sets the author of that instances to self
    post = Post.new(title)
    post.author = self

  end

  def self.post_count

    Post.all.count
  end


end
