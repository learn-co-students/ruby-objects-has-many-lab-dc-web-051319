require'pry'
class Song

  attr_accessor :artist, :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    #@artist = artist
  def artist_name
    if @artist == nil
      return nil
    else
      @artist.name
    end
  end
end

  def self.all
    @@all
  end
end
