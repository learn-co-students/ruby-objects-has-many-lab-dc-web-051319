class Post 
  
  @@authors = []
  @@all = []
  attr_reader :author, :title, :author_name
   def initialize(title)
      @author = author 
      @author_name = author_name
      @title = title
      @@all << self
   end 
  
  def self.all 
    @@all
  end 
  
   def author=(new_author)
     @author = new_author 
      @author_name = new_author.name
   end

end 