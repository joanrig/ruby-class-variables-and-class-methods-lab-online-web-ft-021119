require 'pry'

class Song
  attr_reader :artist, :genre, :name

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @@count += 1

    @artist = artist
    @@artists<< @artist

    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_count = {}
    #@@genres = [pop, rap, rock, rap, pop]
    @@genres.each do |genre|
      genre.count
    end
    binding.pry
  end


end
