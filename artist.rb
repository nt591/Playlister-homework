require_relative 'song'
require_relative 'genre'

class Artist
  attr_accessor :name, :songs, :count, :genres
  
  @@all = []
  
  def initialize  
     @@all << self
     @songs = []
     @genres = []
  end

  def self.reset_artists
    @@count = 0
  end

  def self.count
    @@count
  end

  def self.all
    @@all 
  end

  def songs_count
    @songs.length
  end 

  def add_song(song)
    @songs << song
    @genres << song.genre
    song.genre.artists << self if song.genre && !song.genre.artists.include?(self) 
  end



end