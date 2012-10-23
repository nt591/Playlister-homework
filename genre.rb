require_relative 'artist'
require_relative 'song'

class Genre
  attr_accessor :name, :songs, :artists, :genres
    @@genres = []
  
  def initialize
    @@genres << self 
    @songs = []
    @artists = []
  end

 
  def self.reset_genres
    @@genres = []
  end

  def self.all
    @@genres
  end

end