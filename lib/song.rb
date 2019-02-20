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
      if !genre_count.keys.include?(genre)
        genre_count[:genre]= 1
      else
        genre_count[genre] += 1
      end
    end
    genre_count
    binding.pry
  end


end
