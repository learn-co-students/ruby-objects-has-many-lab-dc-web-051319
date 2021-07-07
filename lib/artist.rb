class Artist

attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
#    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    #has many songs.  Going to find all of the songs that belong to an artist.
    Song.all.select do |song|
      song.artist == self
    end
  end


  def add_song(song)
    # passing the instance obect of the Song as the variable song, so then I can see artist from Song and then setting artist to = self (instance of Artist)
    song.artist = self

  end

  def add_song_by_name(song_name)
    #instance method taking in an argument of a song, creating a new song, and then setting the artist to self.
    song_name = Song.new(song_name)
    song_name.artist = self

  end

  def self.song_count

    Song.all.count
  end

end
