require 'pry'

class Song
  attr_reader :artist, :genre, :name

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
    @@count += 1

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
    #=> {pop => 2, rap => 2, rock => 1}
    @@genres.each do |genre|
      if genre_count.includes?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    binding.pry
    genre_count
  end


end
