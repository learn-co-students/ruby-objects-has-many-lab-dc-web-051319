class Artist 
  @@artists = []
  @@songs = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@artists << self 
  end 
  
  def add_song(song)
    song.artist= self 
    @@songs << song 
  end 
  
  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self 
    @@songs << new_song
  end 
    
  def songs 
    @@songs
  end 
  
  def self.song_count
    @@songs.size 
  end 
end 