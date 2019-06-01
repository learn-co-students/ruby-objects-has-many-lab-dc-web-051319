class Author 
    @@posts = []
    attr_accessor :name
    def initialize(name)
      @name = name
    end 
  
  def add_post(post)
    post.author=self
    @@posts << post 
  end 
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    new_post.author = self 
    @@posts << new_post
  end 
    
  def posts
    @@posts
  end 
  
  def self.post_count
    @@posts.size 
  end 
  
  
end 

