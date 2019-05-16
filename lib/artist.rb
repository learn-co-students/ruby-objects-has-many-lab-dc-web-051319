require_relative "./song.rb"


class Artist

  @@song_count = 0

  attr_accessor :name,:songs

    def initialize(name)
      @name = name
      @songs = []
    end

    def add_song(song)
      song.artist = self
      self.songs << song
      @@song_count +=1
    end

    def add_song_by_name(song_name)
      song = Song.new(song_name)
      song.artist = self
      self.songs << song
      @@song_count +=1
    end


    def self.song_count
      @@song_count
    end

end
