class Artist
  attr_accessor :name, :song
  attr_reader :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def add_song(song)
    song.artist = self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    @songs << new_song
    new_song.artist = self
  end

  def self.song_count
    Song.all.length
  end
end
