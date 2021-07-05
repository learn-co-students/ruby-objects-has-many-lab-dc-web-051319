require'pry'
class Artist

  attr_reader :name, :songs
  #getter(reading the value)
  #def name(name)
  #@name = name
  #end

  @@song_count = 0

  def initialize(name)
    @name = name
    @songs = []#empty array pra add os songs
    #transforma os argumentos em em instance methods @coisa
    #o argumento(s) vai ser usado para iniciar o novo objeto
    #ex
    #sandy_e_junior = Artist.new("Sandy & Júnior")
    #@@all << self
  end

  #def songs_artist
  #  self.song

  #end


  def add_song(song)
    #song = #<Song:0x00007fb1569b5a00 @artist=#<Artist:0x00007fb1569b5af0 @name="Adele", @songs=[#<Song:0x00007fb1569b5a00 ...>]>, @title="Hello">
    #song é o objeto da classe Song sendo add ao artista.
    @songs << song
    song.artist = self
    @@song_count += 1

  end

  def songs
    @songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
    #binding.pry
  end

  def self.song_count
    @@song_count
  end
end
