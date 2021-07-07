require_relative 'song.rb'

class Artist
    attr_reader :name, :songs
    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
        @songs << new_song
    end

    def self.song_count
        Song.songs.length
    end

end