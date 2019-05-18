require 'pry'

class Post
  attr_accessor :author, :title, :post

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
  #binding.pry


  def self.all
    @@all
  end

  def author_name
    author.name if author
  end

end
