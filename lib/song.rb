require_relative 'artist.rb'
class Song
  attr_accessor :artist
  @@all = []
  @@songs = []
  attr_reader :name
    attr_accessor :artist
    def initialize(name)
        @name = name
        @@songs << self
        @@all << self
    end

    def self.songs
        @@songs
    end

    def self.all
        @@all
    end

    # def artist
    #     @artist
    # end

    def artist_name
       if self.artist == nil
           return nil
       else
           return self.artist.name
       end
   end

  end
