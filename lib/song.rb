require "pry"

class Song

  attr_accessor :artist
  attr_reader :name

  @@all = []

  def initialize (name)
    @name = name
    @@all << self
  end

  def artist_name
    if artist
      artist.name
    end
  end

   def self.all
     @@all
   end



end



# is initialized with an argument of a name (FAILED - 21)
#pushes new instances into a class variable called @@all upon initialization (FAILED - 22)
