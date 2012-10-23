require_relative 'artist'
require_relative 'genre'

class Song
  attr_accessor :genre

  def genre=(genre)
    @genre = genre
    @genre.songs << self
  end
end